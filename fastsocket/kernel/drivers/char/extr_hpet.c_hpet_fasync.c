
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpet_dev {int hd_async_queue; } ;
struct file {struct hpet_dev* private_data; } ;


 int EIO ;
 scalar_t__ fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int hpet_fasync(int fd, struct file *file, int on)
{
 struct hpet_dev *devp;

 devp = file->private_data;

 if (fasync_helper(fd, file, on, &devp->hd_async_queue) >= 0)
  return 0;
 else
  return -EIO;
}
