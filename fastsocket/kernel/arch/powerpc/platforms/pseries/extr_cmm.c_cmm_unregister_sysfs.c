
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * cmm_attrs ;
 int cmm_sysdev_class ;
 int sysdev_class_unregister (int *) ;
 int sysdev_remove_file (struct sys_device*,int ) ;
 int sysdev_unregister (struct sys_device*) ;

__attribute__((used)) static void cmm_unregister_sysfs(struct sys_device *sysdev)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(cmm_attrs); i++)
  sysdev_remove_file(sysdev, cmm_attrs[i]);
 sysdev_unregister(sysdev);
 sysdev_class_unregister(&cmm_sysdev_class);
}
