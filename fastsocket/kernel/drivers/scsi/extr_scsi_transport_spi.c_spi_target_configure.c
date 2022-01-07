
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_container {int dummy; } ;
struct kobject {int dummy; } ;
struct device {struct kobject kobj; } ;


 int sysfs_update_group (struct kobject*,int *) ;
 int target_attribute_group ;

__attribute__((used)) static int spi_target_configure(struct transport_container *tc,
    struct device *dev,
    struct device *cdev)
{
 struct kobject *kobj = &cdev->kobj;


 sysfs_update_group(kobj, &target_attribute_group);

 return 0;
}
