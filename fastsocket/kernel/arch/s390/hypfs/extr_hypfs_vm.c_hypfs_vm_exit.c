
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACHINE_IS_VM ;
 int dbfs_file_2fc ;
 int hypfs_dbfs_remove_file (int *) ;

void hypfs_vm_exit(void)
{
 if (!MACHINE_IS_VM)
  return;
 hypfs_dbfs_remove_file(&dbfs_file_2fc);
}
