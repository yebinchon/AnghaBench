
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * proc_ide_root ;
 int remove_proc_entry (char*,int *) ;

void proc_ide_destroy(void)
{
 remove_proc_entry("drivers", proc_ide_root);
 remove_proc_entry("ide", ((void*)0));
}
