
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_input_dev (void*) ;
 int input_mt_slot (int ,int) ;

void wacom_mt_slot(void *wcombo, int slot)
{
 input_mt_slot(get_input_dev(wcombo), slot);
}
