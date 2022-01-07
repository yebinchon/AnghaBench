
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {void* i_private; struct file_operations const* i_fop; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFREG ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char const*) ;
 int dput (struct dentry*) ;
 struct inode* ibmasmfs_make_inode (struct super_block*,int) ;

__attribute__((used)) static struct dentry *ibmasmfs_create_file (struct super_block *sb,
   struct dentry *parent,
   const char *name,
   const struct file_operations *fops,
   void *data,
   int mode)
{
 struct dentry *dentry;
 struct inode *inode;

 dentry = d_alloc_name(parent, name);
 if (!dentry)
  return ((void*)0);

 inode = ibmasmfs_make_inode(sb, S_IFREG | mode);
 if (!inode) {
  dput(dentry);
  return ((void*)0);
 }

 inode->i_fop = fops;
 inode->i_private = data;

 d_add(dentry, inode);
 return dentry;
}
