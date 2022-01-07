
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_nlink; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mutex; } ;


 int IS_ERR (struct dentry*) ;
 TYPE_2__* capifs_root ;
 int d_delete (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* get_node (unsigned int) ;
 int mutex_unlock (int *) ;

void capifs_free_ncci(unsigned int number)
{
 struct dentry *dentry = get_node(number);

 if (!IS_ERR(dentry)) {
  struct inode *inode = dentry->d_inode;
  if (inode) {
   inode->i_nlink--;
   d_delete(dentry);
   dput(dentry);
  }
  dput(dentry);
 }
 mutex_unlock(&capifs_root->d_inode->i_mutex);
}
