
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hypfs_dbfs_file {int data_free_work; int lock; int dentry; int name; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int data_free_delayed ;
 int dbfs_dir ;
 int dbfs_ops ;
 int debugfs_create_file (int ,int,int ,struct hypfs_dbfs_file*,int *) ;
 int mutex_init (int *) ;

int hypfs_dbfs_create_file(struct hypfs_dbfs_file *df)
{
 df->dentry = debugfs_create_file(df->name, 0400, dbfs_dir, df,
      &dbfs_ops);
 if (IS_ERR(df->dentry))
  return PTR_ERR(df->dentry);
 mutex_init(&df->lock);
 INIT_DELAYED_WORK(&df->data_free_work, data_free_delayed);
 return 0;
}
