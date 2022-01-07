
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int attribute_container_device_trigger (struct device*,int ) ;
 int transport_add_class_device ;

void transport_add_device(struct device *dev)
{
 attribute_container_device_trigger(dev, transport_add_class_device);
}
