
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbfs_dir ;
 int debugfs_remove (int ) ;

void hypfs_dbfs_exit(void)
{
 debugfs_remove(dbfs_dir);
}
