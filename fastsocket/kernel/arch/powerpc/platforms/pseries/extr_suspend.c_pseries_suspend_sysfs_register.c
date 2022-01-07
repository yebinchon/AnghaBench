
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int * cls; scalar_t__ id; } ;


 int attr_hibernate ;
 int suspend_sysdev_class ;
 int sysdev_class_create_file (int *,int *) ;
 int sysdev_class_register (int *) ;
 int sysdev_class_unregister (int *) ;

__attribute__((used)) static int pseries_suspend_sysfs_register(struct sys_device *sysdev)
{
 int rc;

 if ((rc = sysdev_class_register(&suspend_sysdev_class)))
  return rc;

 sysdev->id = 0;
 sysdev->cls = &suspend_sysdev_class;

 if ((rc = sysdev_class_create_file(&suspend_sysdev_class, &attr_hibernate)))
  goto class_unregister;

 return 0;

class_unregister:
 sysdev_class_unregister(&suspend_sysdev_class);
 return rc;
}
