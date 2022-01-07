
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int KBUILD_MODNAME ;
 int * debugfs_create_dir (int ,int *) ;
 int * root_folder ;

void brcms_debugfs_init(void)
{
 root_folder = debugfs_create_dir(KBUILD_MODNAME, ((void*)0));
 if (IS_ERR(root_folder))
  root_folder = ((void*)0);
}
