
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int reqlists_lock; int req_complete; int wait_complete; } ;
struct file {struct file_info* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int raw1394_poll(struct file *file, poll_table * pt)
{
 struct file_info *fi = file->private_data;
 unsigned int mask = POLLOUT | POLLWRNORM;
 unsigned long flags;

 poll_wait(file, &fi->wait_complete, pt);

 spin_lock_irqsave(&fi->reqlists_lock, flags);
 if (!list_empty(&fi->req_complete)) {
  mask |= POLLIN | POLLRDNORM;
 }
 spin_unlock_irqrestore(&fi->reqlists_lock, flags);

 return mask;
}
