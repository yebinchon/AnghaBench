
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int locks; TYPE_1__* interface; } ;
typedef TYPE_2__ isdn_driver_t ;
struct TYPE_4__ {int owner; } ;


 int try_module_get (int ) ;

__attribute__((used)) static inline void
isdn_lock_driver(isdn_driver_t *drv)
{
 try_module_get(drv->interface->owner);
 drv->locks++;
}
