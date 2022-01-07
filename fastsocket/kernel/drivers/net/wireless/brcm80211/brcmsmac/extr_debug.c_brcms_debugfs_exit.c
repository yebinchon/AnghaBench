
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int *) ;
 int * root_folder ;

void brcms_debugfs_exit(void)
{
 if (!root_folder)
  return;

 debugfs_remove_recursive(root_folder);
 root_folder = ((void*)0);
}
