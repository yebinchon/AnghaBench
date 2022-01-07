
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {char* i_private; int * i_fop; int * i_op; scalar_t__ i_size; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef int mode_t ;
struct TYPE_2__ {int i_mutex; int i_nlink; } ;


 int BUG () ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IFDIR ;
 int S_IFREG ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int hypfs_file_ops ;
 struct inode* hypfs_make_inode (struct super_block*,int) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct dentry *hypfs_create_file(struct super_block *sb,
     struct dentry *parent, const char *name,
     char *data, mode_t mode)
{
 struct dentry *dentry;
 struct inode *inode;

 mutex_lock(&parent->d_inode->i_mutex);
 dentry = lookup_one_len(name, parent, strlen(name));
 if (IS_ERR(dentry)) {
  dentry = ERR_PTR(-ENOMEM);
  goto fail;
 }
 inode = hypfs_make_inode(sb, mode);
 if (!inode) {
  dput(dentry);
  dentry = ERR_PTR(-ENOMEM);
  goto fail;
 }
 if (mode & S_IFREG) {
  inode->i_fop = &hypfs_file_ops;
  if (data)
   inode->i_size = strlen(data);
  else
   inode->i_size = 0;
 } else if (mode & S_IFDIR) {
  inode->i_op = &simple_dir_inode_operations;
  inode->i_fop = &simple_dir_operations;
  parent->d_inode->i_nlink++;
 } else
  BUG();
 inode->i_private = data;
 d_instantiate(dentry, inode);
 dget(dentry);
fail:
 mutex_unlock(&parent->d_inode->i_mutex);
 return dentry;
}
