
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bus_type {TYPE_2__* p; } ;
struct bus_attribute {int attr; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ subsys; } ;


 scalar_t__ bus_get (struct bus_type*) ;
 int bus_put (struct bus_type*) ;
 int sysfs_remove_file (int *,int *) ;

void bus_remove_file(struct bus_type *bus, struct bus_attribute *attr)
{
 if (bus_get(bus)) {
  sysfs_remove_file(&bus->p->subsys.kobj, &attr->attr);
  bus_put(bus);
 }
}
