
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct bsg_device* private_data; } ;
struct bsg_device {scalar_t__ queued_cmds; scalar_t__ max_queue; int lock; int done_list; int wq_free; int wq_done; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static unsigned int bsg_poll(struct file *file, poll_table *wait)
{
 struct bsg_device *bd = file->private_data;
 unsigned int mask = 0;

 poll_wait(file, &bd->wq_done, wait);
 poll_wait(file, &bd->wq_free, wait);

 spin_lock_irq(&bd->lock);
 if (!list_empty(&bd->done_list))
  mask |= POLLIN | POLLRDNORM;
 if (bd->queued_cmds >= bd->max_queue)
  mask |= POLLOUT;
 spin_unlock_irq(&bd->lock);

 return mask;
}
