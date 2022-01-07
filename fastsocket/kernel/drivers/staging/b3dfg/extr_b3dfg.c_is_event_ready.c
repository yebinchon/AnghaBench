
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b3dfg_dev {unsigned long cstate_tstamp; int buffer_lock; int cstate_lock; int transmission_enabled; } ;
struct b3dfg_buffer {scalar_t__ state; } ;


 scalar_t__ B3DFG_BUFFER_POPULATED ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int is_event_ready(struct b3dfg_dev *fgdev, struct b3dfg_buffer *buf,
     unsigned long when)
{
 int result;
 unsigned long flags;

 spin_lock_irqsave(&fgdev->buffer_lock, flags);
 spin_lock(&fgdev->cstate_lock);
 result = (!fgdev->transmission_enabled ||
    buf->state == B3DFG_BUFFER_POPULATED ||
    when != fgdev->cstate_tstamp);
 spin_unlock(&fgdev->cstate_lock);
 spin_unlock_irqrestore(&fgdev->buffer_lock, flags);

 return result;
}
