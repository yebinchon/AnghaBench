
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_eventh {int head; } ;
struct nouveau_event {int index_nr; int lock; scalar_t__ toggle_lock; TYPE_1__* index; } ;
struct TYPE_2__ {int list; } ;


 int list_add (int *,int *) ;
 int nouveau_event_enable_locked (struct nouveau_event*,int) ;
 int spin_lock (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (scalar_t__) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
nouveau_event_get(struct nouveau_event *event, int index,
    struct nouveau_eventh *handler)
{
 unsigned long flags;

 if (index >= event->index_nr)
  return;

 spin_lock_irqsave(&event->lock, flags);
 list_add(&handler->head, &event->index[index].list);
 if (event->toggle_lock)
  spin_lock(event->toggle_lock);
 nouveau_event_enable_locked(event, index);
 if (event->toggle_lock)
  spin_unlock(event->toggle_lock);
 spin_unlock_irqrestore(&event->lock, flags);
}
