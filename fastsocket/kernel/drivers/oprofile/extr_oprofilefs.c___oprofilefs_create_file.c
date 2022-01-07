
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct file_operations const* i_fop; } ;
struct file_operations {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {void* i_private; } ;


 int ENOMEM ;
 int S_IFREG ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char const*) ;
 int dput (struct dentry*) ;
 struct inode* oprofilefs_get_inode (struct super_block*,int) ;

__attribute__((used)) static int __oprofilefs_create_file(struct super_block *sb,
 struct dentry *root, char const *name, const struct file_operations *fops,
 int perm, void *priv)
{
 struct dentry *dentry;
 struct inode *inode;

 dentry = d_alloc_name(root, name);
 if (!dentry)
  return -ENOMEM;
 inode = oprofilefs_get_inode(sb, S_IFREG | perm);
 if (!inode) {
  dput(dentry);
  return -ENOMEM;
 }
 inode->i_fop = fops;
 d_add(dentry, inode);
 dentry->d_inode->i_private = priv;
 return 0;
}
