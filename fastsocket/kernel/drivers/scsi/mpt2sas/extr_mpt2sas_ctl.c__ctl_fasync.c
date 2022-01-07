
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int async_queue ;
 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int
_ctl_fasync(int fd, struct file *filep, int mode)
{
 return fasync_helper(fd, filep, mode, &async_queue);
}
