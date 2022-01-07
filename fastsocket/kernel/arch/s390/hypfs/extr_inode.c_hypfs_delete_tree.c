
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_fsdata; } ;


 struct dentry* hypfs_last_dentry ;
 int hypfs_remove (struct dentry*) ;

__attribute__((used)) static void hypfs_delete_tree(struct dentry *root)
{
 while (hypfs_last_dentry) {
  struct dentry *next_dentry;
  next_dentry = hypfs_last_dentry->d_fsdata;
  hypfs_remove(hypfs_last_dentry);
  hypfs_last_dentry = next_dentry;
 }
}
