
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_device {int queue; } ;
struct file {struct pps_device* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int pps_cdev_poll(struct file *file, poll_table *wait)
{
 struct pps_device *pps = file->private_data;

 poll_wait(file, &pps->queue, wait);

 return POLLIN | POLLRDNORM;
}
