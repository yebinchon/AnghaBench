
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hypfs_dbfs_file {int dentry; } ;


 int debugfs_remove (int ) ;

void hypfs_dbfs_remove_file(struct hypfs_dbfs_file *df)
{
 debugfs_remove(df->dentry);
}
