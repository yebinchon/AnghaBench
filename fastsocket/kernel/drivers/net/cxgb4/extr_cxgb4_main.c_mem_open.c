
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int private_data; } ;



__attribute__((used)) static int mem_open(struct inode *inode, struct file *file)
{
 file->private_data = inode->i_private;
 return 0;
}
