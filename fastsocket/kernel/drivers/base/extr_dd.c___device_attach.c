
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int driver_match_device (struct device_driver*,struct device*) ;
 int driver_probe_device (struct device_driver*,struct device*) ;

__attribute__((used)) static int __device_attach(struct device_driver *drv, void *data)
{
 struct device *dev = data;

 if (!driver_match_device(drv, dev))
  return 0;

 return driver_probe_device(drv, dev);
}
