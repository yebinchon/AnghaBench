
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct bmc_device {int dummy; } ;


 int __find_bmc_guid ;
 struct bmc_device* dev_get_drvdata (struct device*) ;
 struct device* driver_find_device (struct device_driver*,int *,unsigned char*,int ) ;

__attribute__((used)) static struct bmc_device *ipmi_find_bmc_guid(struct device_driver *drv,
          unsigned char *guid)
{
 struct device *dev;

 dev = driver_find_device(drv, ((void*)0), guid, __find_bmc_guid);
 if (dev)
  return dev_get_drvdata(dev);
 else
  return ((void*)0);
}
