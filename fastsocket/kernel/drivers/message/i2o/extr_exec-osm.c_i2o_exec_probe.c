
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2o_device {TYPE_1__* iop; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct i2o_device* exec; } ;


 int dev_attr_product_id ;
 int dev_attr_vendor_id ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;
 int i2o_event_register (struct i2o_device*,int *,int ,int) ;
 int i2o_exec_driver ;
 struct i2o_device* to_i2o_device (struct device*) ;

__attribute__((used)) static int i2o_exec_probe(struct device *dev)
{
 struct i2o_device *i2o_dev = to_i2o_device(dev);
 int rc;

 rc = i2o_event_register(i2o_dev, &i2o_exec_driver, 0, 0xffffffff);
 if (rc) goto err_out;

 rc = device_create_file(dev, &dev_attr_vendor_id);
 if (rc) goto err_evtreg;
 rc = device_create_file(dev, &dev_attr_product_id);
 if (rc) goto err_vid;

 i2o_dev->iop->exec = i2o_dev;

 return 0;

err_vid:
 device_remove_file(dev, &dev_attr_vendor_id);
err_evtreg:
 i2o_event_register(to_i2o_device(dev), &i2o_exec_driver, 0, 0);
err_out:
 return rc;
}
