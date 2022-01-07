
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dasd_proc_root_entry ;
 int remove_proc_entry (char*,int *) ;

void
dasd_proc_exit(void)
{
 remove_proc_entry("devices", dasd_proc_root_entry);
 remove_proc_entry("statistics", dasd_proc_root_entry);
 remove_proc_entry("dasd", ((void*)0));
}
