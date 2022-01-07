
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dbfs_dir ;
 int debugfs_create_dir (char*,int *) ;

int hypfs_dbfs_init(void)
{
 dbfs_dir = debugfs_create_dir("s390_hypfs", ((void*)0));
 if (IS_ERR(dbfs_dir))
  return PTR_ERR(dbfs_dir);
 return 0;
}
