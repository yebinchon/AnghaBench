
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int release; int * bus; void* platform_data; } ;


 int dummy_release ;
 int soc_camera_bus_type ;

__attribute__((used)) static void soc_camera_device_init(struct device *dev, void *pdata)
{
 dev->platform_data = pdata;
 dev->bus = &soc_camera_bus_type;
 dev->release = dummy_release;
}
