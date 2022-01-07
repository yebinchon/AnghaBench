
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_device {int dummy; } ;
struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int kfree (struct i2o_device*) ;
 int pr_debug (char*,int ) ;
 struct i2o_device* to_i2o_device (struct device*) ;

__attribute__((used)) static void i2o_device_release(struct device *dev)
{
 struct i2o_device *i2o_dev = to_i2o_device(dev);

 pr_debug("i2o: device %s released\n", dev_name(dev));

 kfree(i2o_dev);
}
