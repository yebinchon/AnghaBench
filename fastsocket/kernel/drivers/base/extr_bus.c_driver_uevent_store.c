
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {TYPE_1__* p; } ;
typedef size_t ssize_t ;
typedef enum kobject_action { ____Placeholder_kobject_action } kobject_action ;
struct TYPE_2__ {int kobj; } ;


 scalar_t__ kobject_action_type (char const*,size_t,int*) ;
 int kobject_uevent (int *,int) ;

__attribute__((used)) static ssize_t driver_uevent_store(struct device_driver *drv,
       const char *buf, size_t count)
{
 enum kobject_action action;

 if (kobject_action_type(buf, count, &action) == 0)
  kobject_uevent(&drv->p->kobj, action);
 return count;
}
