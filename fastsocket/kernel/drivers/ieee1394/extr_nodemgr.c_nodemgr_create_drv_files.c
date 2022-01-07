
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct hpsb_protocol_driver {struct device_driver driver; } ;


 int ARRAY_SIZE (int *) ;
 int HPSB_ERR (char*) ;
 scalar_t__ driver_create_file (struct device_driver*,int ) ;
 int * fw_drv_attrs ;

__attribute__((used)) static void nodemgr_create_drv_files(struct hpsb_protocol_driver *driver)
{
 struct device_driver *drv = &driver->driver;
 int i;

 for (i = 0; i < ARRAY_SIZE(fw_drv_attrs); i++)
  if (driver_create_file(drv, fw_drv_attrs[i]))
   goto fail;
 return;
fail:
 HPSB_ERR("Failed to add sysfs attribute");
}
