
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_input_dev (void*) ;
 int input_mt_report_slot_state (int ,unsigned int,int) ;

void wacom_mt_report_slot_state(void *wcombo, unsigned int tool_type,
    bool active)
{
 input_mt_report_slot_state(get_input_dev(wcombo), tool_type, active);
}
