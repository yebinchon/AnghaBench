
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_device {scalar_t__ head; scalar_t__ tail; int waitq; } ;
struct file {struct uinput_device* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int uinput_poll(struct file *file, poll_table *wait)
{
 struct uinput_device *udev = file->private_data;

 poll_wait(file, &udev->waitq, wait);

 if (udev->head != udev->tail)
  return POLLIN | POLLRDNORM;

 return 0;
}
