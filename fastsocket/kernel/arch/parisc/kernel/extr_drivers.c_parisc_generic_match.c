
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int match_device (int ,int ) ;
 int to_parisc_device (struct device*) ;
 int to_parisc_driver (struct device_driver*) ;

__attribute__((used)) static int parisc_generic_match(struct device *dev, struct device_driver *drv)
{
 return match_device(to_parisc_driver(drv), to_parisc_device(dev));
}
