
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_event_wait {int list; scalar_t__ done; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vt_event_lock ;
 int vt_event_waitqueue ;
 int vt_events ;
 int wait_event_interruptible (int ,scalar_t__) ;

__attribute__((used)) static void vt_event_wait(struct vt_event_wait *vw)
{
 unsigned long flags;

 INIT_LIST_HEAD(&vw->list);
 vw->done = 0;

 spin_lock_irqsave(&vt_event_lock, flags);
 list_add(&vw->list, &vt_events);
 spin_unlock_irqrestore(&vt_event_lock, flags);

 wait_event_interruptible(vt_event_waitqueue, vw->done);

 spin_lock_irqsave(&vt_event_lock, flags);
 list_del(&vw->list);
 spin_unlock_irqrestore(&vt_event_lock, flags);
}
