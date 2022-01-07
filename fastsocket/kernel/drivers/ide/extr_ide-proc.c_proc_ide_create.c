
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ide_drivers_operations ;
 int proc_create (char*,int ,int ,int *) ;
 int proc_ide_root ;
 int proc_mkdir (char*,int *) ;

void proc_ide_create(void)
{
 proc_ide_root = proc_mkdir("ide", ((void*)0));

 if (!proc_ide_root)
  return;

 proc_create("drivers", 0, proc_ide_root, &ide_drivers_operations);
}
