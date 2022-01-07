
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_eventh {int head; } ;
struct nouveau_event {int index_nr; int lock; scalar_t__ toggle_lock; } ;


 int list_del (int *) ;
 int nouveau_event_disable_locked (struct nouveau_event*,int,int) ;
 int spin_lock (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (scalar_t__) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
nouveau_event_put(struct nouveau_event *event, int index,
    struct nouveau_eventh *handler)
{
 unsigned long flags;

 if (index >= event->index_nr)
  return;

 spin_lock_irqsave(&event->lock, flags);
 list_del(&handler->head);

 if (event->toggle_lock)
  spin_lock(event->toggle_lock);
 nouveau_event_disable_locked(event, index, 1);
 if (event->toggle_lock)
  spin_unlock(event->toggle_lock);

 spin_unlock_irqrestore(&event->lock, flags);
}
