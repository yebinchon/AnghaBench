
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capi_driver {int list; } ;


 int capi_drivers_list_lock ;
 int list_del (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void unregister_capi_driver(struct capi_driver *driver)
{
 unsigned long flags;

 write_lock_irqsave(&capi_drivers_list_lock, flags);
 list_del(&driver->list);
 write_unlock_irqrestore(&capi_drivers_list_lock, flags);
}
