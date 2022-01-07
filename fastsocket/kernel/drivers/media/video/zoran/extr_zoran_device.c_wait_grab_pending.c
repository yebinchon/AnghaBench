
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran {scalar_t__ v4l_pend_tail; scalar_t__ v4l_pend_head; int spinlock; int v4l_capq; int v4l_memgrab_active; } ;


 int ERESTARTSYS ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible (int ,int) ;
 int zr36057_set_memgrab (struct zoran*,int ) ;

int
wait_grab_pending (struct zoran *zr)
{
 unsigned long flags;



 if (!zr->v4l_memgrab_active)
  return 0;

 wait_event_interruptible(zr->v4l_capq,
   (zr->v4l_pend_tail == zr->v4l_pend_head));
 if (signal_pending(current))
  return -ERESTARTSYS;

 spin_lock_irqsave(&zr->spinlock, flags);
 zr36057_set_memgrab(zr, 0);
 spin_unlock_irqrestore(&zr->spinlock, flags);

 return 0;
}
