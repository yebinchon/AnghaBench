
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct sysdev_class {TYPE_1__ kset; } ;
struct sys_device {struct sysdev_class* cls; } ;


 int EINVAL ;
 int kobject_name (int *) ;
 int pr_debug (char*,int ) ;
 int sysdev_add (struct sys_device*) ;
 scalar_t__ sysdev_initialize (struct sys_device*) ;

int sysdev_register(struct sys_device *sysdev)
{
 struct sysdev_class *cls = sysdev->cls;

 if (sysdev_initialize(sysdev))
  return -EINVAL;

 pr_debug("Registering sys device of class '%s'\n",
   kobject_name(&cls->kset.kobj));

 return sysdev_add(sysdev);
}
