
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kset {int dummy; } ;
struct kobject {int dummy; } ;
struct device {TYPE_2__* class; TYPE_1__* bus; } ;
struct TYPE_4__ {char const* name; } ;
struct TYPE_3__ {char const* name; } ;


 struct device* to_dev (struct kobject*) ;

__attribute__((used)) static const char *dev_uevent_name(struct kset *kset, struct kobject *kobj)
{
 struct device *dev = to_dev(kobj);

 if (dev->bus)
  return dev->bus->name;
 if (dev->class)
  return dev->class->name;
 return ((void*)0);
}
