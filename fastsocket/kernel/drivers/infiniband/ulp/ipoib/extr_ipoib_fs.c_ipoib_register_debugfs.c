
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ debugfs_create_dir (char*,int *) ;
 scalar_t__ ipoib_root ;

int ipoib_register_debugfs(void)
{
 ipoib_root = debugfs_create_dir("ipoib", ((void*)0));
 return ipoib_root ? 0 : -ENOMEM;
}
