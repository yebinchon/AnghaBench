
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct amba_driver {int id_table; } ;
struct amba_device {int dummy; } ;


 int * amba_lookup (int ,struct amba_device*) ;
 struct amba_device* to_amba_device (struct device*) ;
 struct amba_driver* to_amba_driver (struct device_driver*) ;

__attribute__((used)) static int amba_match(struct device *dev, struct device_driver *drv)
{
 struct amba_device *pcdev = to_amba_device(dev);
 struct amba_driver *pcdrv = to_amba_driver(drv);

 return amba_lookup(pcdrv->id_table, pcdev) != ((void*)0);
}
