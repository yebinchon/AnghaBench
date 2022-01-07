
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct klist_iter {int dummy; } ;
struct device_driver {TYPE_2__* p; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_4__ {int knode_bus; } ;
struct TYPE_3__ {int klist_drivers; } ;


 int EINVAL ;
 int klist_iter_exit (struct klist_iter*) ;
 int klist_iter_init_node (int *,struct klist_iter*,int *) ;
 struct device_driver* next_driver (struct klist_iter*) ;

int bus_for_each_drv(struct bus_type *bus, struct device_driver *start,
       void *data, int (*fn)(struct device_driver *, void *))
{
 struct klist_iter i;
 struct device_driver *drv;
 int error = 0;

 if (!bus)
  return -EINVAL;

 klist_iter_init_node(&bus->p->klist_drivers, &i,
        start ? &start->p->knode_bus : ((void*)0));
 while ((drv = next_driver(&i)) && !error)
  error = fn(drv, data);
 klist_iter_exit(&i);
 return error;
}
