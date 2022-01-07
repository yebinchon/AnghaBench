
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acquire_console_sem () ;
 int disable_vt_switch ;
 int release_console_sem () ;

void pm_set_vt_switch(int do_switch)
{
 acquire_console_sem();
 disable_vt_switch = !do_switch;
 release_console_sem();
}
