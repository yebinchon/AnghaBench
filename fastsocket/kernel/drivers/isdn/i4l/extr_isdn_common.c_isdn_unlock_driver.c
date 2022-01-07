
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ locks; TYPE_1__* interface; } ;
typedef TYPE_2__ isdn_driver_t ;
struct TYPE_4__ {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static inline void
isdn_unlock_driver(isdn_driver_t *drv)
{
 if (drv->locks > 0) {
  drv->locks--;
  module_put(drv->interface->owner);
 }
}
