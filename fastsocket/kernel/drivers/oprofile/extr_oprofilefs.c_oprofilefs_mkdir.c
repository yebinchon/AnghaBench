
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;


 int S_IFDIR ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char const*) ;
 int dput (struct dentry*) ;
 struct inode* oprofilefs_get_inode (struct super_block*,int) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

struct dentry *oprofilefs_mkdir(struct super_block *sb,
 struct dentry *root, char const *name)
{
 struct dentry *dentry;
 struct inode *inode;

 dentry = d_alloc_name(root, name);
 if (!dentry)
  return ((void*)0);
 inode = oprofilefs_get_inode(sb, S_IFDIR | 0755);
 if (!inode) {
  dput(dentry);
  return ((void*)0);
 }
 inode->i_op = &simple_dir_inode_operations;
 inode->i_fop = &simple_dir_operations;
 d_add(dentry, inode);
 return dentry;
}
