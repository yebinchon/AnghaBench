
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_address_handler {int link; } ;


 int address_handler_lock ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void fw_core_remove_address_handler(struct fw_address_handler *handler)
{
 unsigned long flags;

 spin_lock_irqsave(&address_handler_lock, flags);
 list_del(&handler->link);
 spin_unlock_irqrestore(&address_handler_lock, flags);
}
