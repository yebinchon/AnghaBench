
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phantom_device {int status; int counter; int wait; } ;
struct file {struct phantom_device* private_data; } ;
typedef int poll_table ;


 int PHB_RUNNING ;
 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int pr_debug (char*,unsigned int,...) ;

__attribute__((used)) static unsigned int phantom_poll(struct file *file, poll_table *wait)
{
 struct phantom_device *dev = file->private_data;
 unsigned int mask = 0;

 pr_debug("phantom_poll: %d\n", atomic_read(&dev->counter));
 poll_wait(file, &dev->wait, wait);

 if (!(dev->status & PHB_RUNNING))
  mask = POLLERR;
 else if (atomic_read(&dev->counter))
  mask = POLLIN | POLLRDNORM;

 pr_debug("phantom_poll end: %x/%d\n", mask, atomic_read(&dev->counter));

 return mask;
}
