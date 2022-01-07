
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bus_type {TYPE_2__* p; } ;
typedef size_t ssize_t ;
typedef enum kobject_action { ____Placeholder_kobject_action } kobject_action ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ subsys; } ;


 scalar_t__ kobject_action_type (char const*,size_t,int*) ;
 int kobject_uevent (int *,int) ;

__attribute__((used)) static ssize_t bus_uevent_store(struct bus_type *bus,
    const char *buf, size_t count)
{
 enum kobject_action action;

 if (kobject_action_type(buf, count, &action) == 0)
  kobject_uevent(&bus->p->subsys.kobj, action);
 return count;
}
