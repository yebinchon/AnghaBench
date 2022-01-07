
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int async_queue ;
 int fasync_helper (int,struct file*,int ,int *) ;

__attribute__((used)) static int
_ctl_release(struct inode *inode, struct file *filep)
{
 return fasync_helper(-1, filep, 0, &async_queue);
}
