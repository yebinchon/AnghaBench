
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int dummy; } ;
struct device_private {struct device* device; } ;
struct device {int dummy; } ;


 int put_device (struct device*) ;
 struct device_private* to_device_private_bus (struct klist_node*) ;

__attribute__((used)) static void klist_devices_put(struct klist_node *n)
{
 struct device_private *dev_prv = to_device_private_bus(n);
 struct device *dev = dev_prv->device;

 put_device(dev);
}
