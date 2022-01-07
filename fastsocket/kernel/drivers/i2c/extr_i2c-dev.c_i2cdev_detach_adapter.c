
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_dev {int dev; } ;
struct i2c_adapter {int name; int nr; } ;


 int I2C_MAJOR ;
 int MKDEV (int ,int ) ;
 int dev_attr_name ;
 int device_destroy (int ,int ) ;
 int device_remove_file (int ,int *) ;
 int i2c_dev_class ;
 struct i2c_dev* i2c_dev_get_by_minor (int ) ;
 int pr_debug (char*,int ) ;
 int return_i2c_dev (struct i2c_dev*) ;

__attribute__((used)) static int i2cdev_detach_adapter(struct i2c_adapter *adap)
{
 struct i2c_dev *i2c_dev;

 i2c_dev = i2c_dev_get_by_minor(adap->nr);
 if (!i2c_dev)
  return 0;

 device_remove_file(i2c_dev->dev, &dev_attr_name);
 return_i2c_dev(i2c_dev);
 device_destroy(i2c_dev_class, MKDEV(I2C_MAJOR, adap->nr));

 pr_debug("i2c-dev: adapter [%s] unregistered\n", adap->name);
 return 0;
}
