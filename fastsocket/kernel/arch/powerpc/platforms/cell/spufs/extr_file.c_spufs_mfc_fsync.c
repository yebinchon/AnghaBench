
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dentry {int dummy; } ;


 int spufs_mfc_flush (struct file*,int *) ;

__attribute__((used)) static int spufs_mfc_fsync(struct file *file, struct dentry *dentry,
      int datasync)
{
 return spufs_mfc_flush(file, ((void*)0));
}
