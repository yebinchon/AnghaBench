
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {unsigned int i_ino; int i_ctime; int i_atime; int i_mtime; int i_gid; int i_uid; } ;
struct dentry {int d_inode; } ;
typedef int dev_t ;
struct TYPE_8__ {int mnt_sb; } ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {int mode; int gid; scalar_t__ setgid; int uid; scalar_t__ setuid; } ;
struct TYPE_5__ {int i_mutex; } ;


 int CURRENT_TIME ;
 int IS_ERR (struct dentry*) ;
 int S_IFCHR ;
 TYPE_4__* capifs_mnt ;
 TYPE_3__* capifs_root ;
 TYPE_2__ config ;
 int current_fsgid () ;
 int current_fsuid () ;
 int d_instantiate (struct dentry*,struct inode*) ;
 struct dentry* get_node (unsigned int) ;
 int init_special_inode (struct inode*,int,int ) ;
 int mutex_unlock (int *) ;
 struct inode* new_inode (int ) ;

void capifs_new_ncci(unsigned int number, dev_t device)
{
 struct dentry *dentry;
 struct inode *inode = new_inode(capifs_mnt->mnt_sb);
 if (!inode)
  return;
 inode->i_ino = number+2;

 dentry = get_node(number);


 inode->i_uid = config.setuid ? config.uid : current_fsuid();
 inode->i_gid = config.setgid ? config.gid : current_fsgid();
 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
 init_special_inode(inode, S_IFCHR|config.mode, device);


 if (!IS_ERR(dentry) && !dentry->d_inode)
  d_instantiate(dentry, inode);
 mutex_unlock(&capifs_root->d_inode->i_mutex);
}
