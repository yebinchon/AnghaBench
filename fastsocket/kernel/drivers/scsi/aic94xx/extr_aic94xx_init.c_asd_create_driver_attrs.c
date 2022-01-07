
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;


 int driver_attr_version ;
 int driver_create_file (struct device_driver*,int *) ;

__attribute__((used)) static int asd_create_driver_attrs(struct device_driver *driver)
{
 return driver_create_file(driver, &driver_attr_version);
}
