
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int private_data; } ;



int stats_open_generic(struct inode *inode, struct file *fp)
{
 fp->private_data = inode->i_private;
 return 0;
}
