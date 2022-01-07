
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_dev {struct i2c_dev* dev; } ;
struct i2c_adapter {int nr; int name; int dev; } ;


 int I2C_MAJOR ;
 scalar_t__ IS_ERR (struct i2c_dev*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct i2c_dev*) ;
 int dev_attr_name ;
 struct i2c_dev* device_create (int ,int *,int ,int *,char*,int ) ;
 int device_create_file (struct i2c_dev*,int *) ;
 int device_destroy (int ,int ) ;
 struct i2c_dev* get_free_i2c_dev (struct i2c_adapter*) ;
 int i2c_dev_class ;
 int pr_debug (char*,int ,int ) ;
 int return_i2c_dev (struct i2c_dev*) ;

__attribute__((used)) static int i2cdev_attach_adapter(struct i2c_adapter *adap)
{
 struct i2c_dev *i2c_dev;
 int res;

 i2c_dev = get_free_i2c_dev(adap);
 if (IS_ERR(i2c_dev))
  return PTR_ERR(i2c_dev);


 i2c_dev->dev = device_create(i2c_dev_class, &adap->dev,
         MKDEV(I2C_MAJOR, adap->nr), ((void*)0),
         "i2c-%d", adap->nr);
 if (IS_ERR(i2c_dev->dev)) {
  res = PTR_ERR(i2c_dev->dev);
  goto error;
 }
 res = device_create_file(i2c_dev->dev, &dev_attr_name);
 if (res)
  goto error_destroy;

 pr_debug("i2c-dev: adapter [%s] registered as minor %d\n",
   adap->name, adap->nr);
 return 0;
error_destroy:
 device_destroy(i2c_dev_class, MKDEV(I2C_MAJOR, adap->nr));
error:
 return_i2c_dev(i2c_dev);
 return res;
}
