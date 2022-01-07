
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int lock; int saved_queue_if_no_path; int queue_if_no_path; } ;
struct dm_target {scalar_t__ private; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void multipath_resume(struct dm_target *ti)
{
 struct multipath *m = (struct multipath *) ti->private;
 unsigned long flags;

 spin_lock_irqsave(&m->lock, flags);
 m->queue_if_no_path = m->saved_queue_if_no_path;
 spin_unlock_irqrestore(&m->lock, flags);
}
