
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;


 int driver_attr_version ;
 int driver_remove_file (struct device_driver*,int *) ;

__attribute__((used)) static void asd_remove_driver_attrs(struct device_driver *driver)
{
 driver_remove_file(driver, &driver_attr_version);
}
