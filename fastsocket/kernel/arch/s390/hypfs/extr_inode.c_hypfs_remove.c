
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct TYPE_3__ {int i_mutex; int i_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int d_delete (struct dentry*) ;
 int dput (struct dentry*) ;
 scalar_t__ hypfs_positive (struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_rmdir (TYPE_1__*,struct dentry*) ;
 int simple_unlink (TYPE_1__*,struct dentry*) ;

__attribute__((used)) static void hypfs_remove(struct dentry *dentry)
{
 struct dentry *parent;

 parent = dentry->d_parent;
 if (!parent || !parent->d_inode)
  return;
 mutex_lock(&parent->d_inode->i_mutex);
 if (hypfs_positive(dentry)) {
  if (S_ISDIR(dentry->d_inode->i_mode))
   simple_rmdir(parent->d_inode, dentry);
  else
   simple_unlink(parent->d_inode, dentry);
 }
 d_delete(dentry);
 dput(dentry);
 mutex_unlock(&parent->d_inode->i_mutex);
}
