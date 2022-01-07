
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {TYPE_1__* p; } ;
struct TYPE_2__ {int kobj; } ;


 int kobject_put (int *) ;

void put_driver(struct device_driver *drv)
{
 kobject_put(&drv->p->kobj);
}
