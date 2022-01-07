
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_driver {int (* attach_adapter ) (struct i2c_adapter*) ;} ;
struct i2c_adapter {int dummy; } ;
struct device_driver {int dummy; } ;


 int i2c_detect (struct i2c_adapter*,struct i2c_driver*) ;
 int stub1 (struct i2c_adapter*) ;
 struct i2c_driver* to_i2c_driver (struct device_driver*) ;

__attribute__((used)) static int i2c_do_add_adapter(struct device_driver *d, void *data)
{
 struct i2c_driver *driver = to_i2c_driver(d);
 struct i2c_adapter *adap = data;


 i2c_detect(adap, driver);


 if (driver->attach_adapter) {

  driver->attach_adapter(adap);
 }
 return 0;
}
