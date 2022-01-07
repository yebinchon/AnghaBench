
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_driver {int (* attach_adapter ) (struct i2c_adapter*) ;} ;
struct i2c_adapter {int dummy; } ;
struct device {int * type; } ;


 int i2c_adapter_type ;
 int i2c_detect (struct i2c_adapter*,struct i2c_driver*) ;
 int stub1 (struct i2c_adapter*) ;
 struct i2c_adapter* to_i2c_adapter (struct device*) ;

__attribute__((used)) static int __attach_adapter(struct device *dev, void *data)
{
 struct i2c_adapter *adapter;
 struct i2c_driver *driver = data;

 if (dev->type != &i2c_adapter_type)
  return 0;
 adapter = to_i2c_adapter(dev);

 i2c_detect(adapter, driver);


 if (driver->attach_adapter)
  driver->attach_adapter(adapter);

 return 0;
}
