
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lock; int i_writecount; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_2__ {struct inode* host; } ;


 int atomic_set (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void restore_bitmap_write_access(struct file *file)
{
 struct inode *inode = file->f_mapping->host;

 spin_lock(&inode->i_lock);
 atomic_set(&inode->i_writecount, 1);
 spin_unlock(&inode->i_lock);
}
