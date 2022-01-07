
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct hpsb_protocol_driver {struct device_driver driver; } ;


 int ARRAY_SIZE (int *) ;
 int driver_remove_file (struct device_driver*,int ) ;
 int * fw_drv_attrs ;

__attribute__((used)) static void nodemgr_remove_drv_files(struct hpsb_protocol_driver *driver)
{
 struct device_driver *drv = &driver->driver;
 int i;

 for (i = 0; i < ARRAY_SIZE(fw_drv_attrs); i++)
  driver_remove_file(drv, fw_drv_attrs[i]);
}
