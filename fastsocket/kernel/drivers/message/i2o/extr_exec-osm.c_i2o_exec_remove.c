
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_product_id ;
 int dev_attr_vendor_id ;
 int device_remove_file (struct device*,int *) ;
 int i2o_event_register (int ,int *,int ,int ) ;
 int i2o_exec_driver ;
 int to_i2o_device (struct device*) ;

__attribute__((used)) static int i2o_exec_remove(struct device *dev)
{
 device_remove_file(dev, &dev_attr_product_id);
 device_remove_file(dev, &dev_attr_vendor_id);

 i2o_event_register(to_i2o_device(dev), &i2o_exec_driver, 0, 0);

 return 0;
}
