
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_size; int i_mutex; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_2__ f_path; } ;
typedef int loff_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static loff_t
proc_bus_pci_lseek(struct file *file, loff_t off, int whence)
{
 loff_t new = -1;
 struct inode *inode = file->f_path.dentry->d_inode;

 mutex_lock(&inode->i_mutex);
 switch (whence) {
 case 0:
  new = off;
  break;
 case 1:
  new = file->f_pos + off;
  break;
 case 2:
  new = inode->i_size + off;
  break;
 }
 if (new < 0 || new > inode->i_size)
  new = -EINVAL;
 else
  file->f_pos = new;
 mutex_unlock(&inode->i_mutex);
 return new;
}
