
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_private {scalar_t__ rb_get; scalar_t__ rb_put; int lock; int wait; } ;
struct file {struct pmu_private* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int
pmu_fpoll(struct file *filp, poll_table *wait)
{
 struct pmu_private *pp = filp->private_data;
 unsigned int mask = 0;
 unsigned long flags;

 if (pp == 0)
  return 0;
 poll_wait(filp, &pp->wait, wait);
 spin_lock_irqsave(&pp->lock, flags);
 if (pp->rb_get != pp->rb_put)
  mask |= POLLIN;
 spin_unlock_irqrestore(&pp->lock, flags);
 return mask;
}
