
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * divas_proc_entry ;
 int divas_proc_name ;
 int proc_net_eicon ;
 int remove_proc_entry (int ,int ) ;

void remove_divas_proc(void)
{
 if (divas_proc_entry) {
  remove_proc_entry(divas_proc_name, proc_net_eicon);
  divas_proc_entry = ((void*)0);
 }
}
