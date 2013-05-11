# -*- encoding : utf-8 -*-
require "rubygems"
title=[
	['判断推理测试','518ca640b3e57c552f00000e'],
	['常识判断测试','518ca67ab3e57c552f00001d'],
	['数量关系测试','518ca667b3e57c552f000018'],
	['语言理解与表达测试','518ca625b3e57c552f000009'],
	['资料分析测试','518ca655b3e57c552f000013']
]
category = 'moni'

suj_path = '/Users/john/projects/MyJob/qiangda_resources/gwy/' #本地路径

suj_path = '/home/john/deploy/qiangda_resources/gwy/' #服务器

@suj_0=[
"XC_判断推理测试_2period_20130326.xlsx",
"XC_判断推理测试_issue_3_4_5.xls",
"XC_判断推理测试_第七期20130402.xlsx",
"XC_判断推理测试_第八期20130403.xlsx",
"XC_判断推理测试_第六期20130401.xlsx"
]

@suj_1=[
"XC_常识判断测试_2period_20130326.xlsx",
"XC_常识判断测试_issue_3_4_5.xls",
"XC_常识判断测试_第七期20130402.xlsx",
"XC_常识判断测试_第八期20130403.xlsx",
"XC_常识判断测试_第六期20130401.xlsx"
]

@suj_2=[
"XC_数量关系测试_2period_20130326.xlsx",
"XC_数量关系测试_issue_3_4_5.xls",
"XC_数量关系测试_第七期20130402.xlsx",
"XC_数量关系测试_第八期20130403.xlsx",
"XC_数量关系测试_第六期20130401.xlsx"
]


@suj_3=[
"XC_言语理解与表达测试_2period_20130326.xlsx",
"XC_言语理解与表达测试_issue_3_4_5.xls",
"XC_言语理解与表达测试_第八期20130403.xlsx",
"XC_言语理解与表达测试_第六期20130401.xlsx",
"XC_言语理解测试_第七期20130402.xlsx"
]

@suj_4=[
"XC_资料分析测试_2period_20130326.xlsx",
"XC_资料分析测试_issue_3_4_5.xls",
"XC_资料分析测试_第七期20130402.xlsx",
"XC_资料分析测试_第八期20130403.xlsx",
"XC_资料分析测试_第六期20130401.xlsx"
]





title.each_with_index do |x,i|
  puts "#{x[0]}:"
  suj_arr = instance_variable_get("@suj_#{i}")
  suj_arr.each do |suj|
	  str = "RAILS_ENV=production rake import:append_xlsx form_id='#{x[1]}' "+
		    "category='#{category}' "+
		    "file='#{suj_path}#{suj}'"
	  puts str

  end

end
















