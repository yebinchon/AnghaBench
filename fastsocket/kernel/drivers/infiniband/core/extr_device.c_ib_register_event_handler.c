
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_event_handler {TYPE_1__* device; int list; } ;
struct TYPE_2__ {int event_handler_lock; int event_handler_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ib_register_event_handler (struct ib_event_handler *event_handler)
{
 unsigned long flags;

 spin_lock_irqsave(&event_handler->device->event_handler_lock, flags);
 list_add_tail(&event_handler->list,
        &event_handler->device->event_handler_list);
 spin_unlock_irqrestore(&event_handler->device->event_handler_lock, flags);

 return 0;
}
