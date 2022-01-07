
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysdev_class {int kset; } ;
struct TYPE_3__ {int * kset; } ;
struct sys_device {TYPE_1__ kobj; struct sysdev_class* cls; } ;
struct kobject {int dummy; } ;


 int EINVAL ;
 int kobject_init (TYPE_1__*,int *) ;
 int ktype_sysdev ;
 int memset (TYPE_1__*,int,int) ;

int sysdev_initialize(struct sys_device *sysdev)
{
 struct sysdev_class *cls = sysdev->cls;

 if (!cls)
  return -EINVAL;


 memset(&sysdev->kobj, 0x00, sizeof(struct kobject));


 sysdev->kobj.kset = &cls->kset;


 kobject_init(&sysdev->kobj, &ktype_sysdev);

 return 0;
}
