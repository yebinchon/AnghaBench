
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct lm_driver {TYPE_1__ drv; } ;


 int driver_register (TYPE_1__*) ;
 int lm_bustype ;

int lm_driver_register(struct lm_driver *drv)
{
 drv->drv.bus = &lm_bustype;
 return driver_register(&drv->drv);
}
