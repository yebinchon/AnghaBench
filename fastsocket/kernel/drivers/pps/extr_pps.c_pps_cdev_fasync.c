
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_device {int async_queue; } ;
struct file {struct pps_device* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int pps_cdev_fasync(int fd, struct file *file, int on)
{
 struct pps_device *pps = file->private_data;
 return fasync_helper(fd, file, on, &pps->async_queue);
}
