
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_input_dev (void*) ;
 int input_mt_report_pointer_emulation (int ,int) ;

void wacom_mt_report_pointer_emulation(void *wcombo, bool value)
{
 input_mt_report_pointer_emulation(get_input_dev(wcombo), value);
}
