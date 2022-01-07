
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {int applid; } ;
struct capidev {int recvqueue; int recvwait; TYPE_1__ ap; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static unsigned int
capi_poll(struct file *file, poll_table * wait)
{
 struct capidev *cdev = (struct capidev *)file->private_data;
 unsigned int mask = 0;

 if (!cdev->ap.applid)
  return POLLERR;

 poll_wait(file, &(cdev->recvwait), wait);
 mask = POLLOUT | POLLWRNORM;
 if (!skb_queue_empty(&cdev->recvqueue))
  mask |= POLLIN | POLLRDNORM;
 return mask;
}
