
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {scalar_t__ data; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 struct proc_dir_entry* PDE (struct inode*) ;

__attribute__((used)) static int scanlog_open(struct inode * inode, struct file * file)
{
 struct proc_dir_entry *dp = PDE(inode);
 unsigned int *data = (unsigned int *)dp->data;

 if (data[0] != 0) {



  return -EBUSY;
 }

 data[0] = 0;

 return 0;
}
