
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int KBUILD_MODNAME ;
 int * debugfs_create_dir (int ,int *) ;
 int * rootdir ;

void b43_debugfs_init(void)
{
 rootdir = debugfs_create_dir(KBUILD_MODNAME, ((void*)0));
 if (IS_ERR(rootdir))
  rootdir = ((void*)0);
}
