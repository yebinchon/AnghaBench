
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


 int EINVAL ;
 scalar_t__ bus_get (struct bus_type*) ;
 int bus_put (struct bus_type*) ;
 int sysfs_create_file (int *,int *) ;

int bus_create_file(struct bus_type *bus, struct bus_attribute *attr)
{
 int error;
 if (bus_get(bus)) {
  error = sysfs_create_file(&bus->p->subsys.kobj, &attr->attr);
  bus_put(bus);
 } else
  error = -EINVAL;
 return error;
}
