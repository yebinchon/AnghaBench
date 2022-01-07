
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_driver {int (* resume ) (struct i2c_client*) ;} ;
struct i2c_client {int dummy; } ;
struct device {int driver; } ;


 struct i2c_client* i2c_verify_client (struct device*) ;
 int stub1 (struct i2c_client*) ;
 struct i2c_driver* to_i2c_driver (int ) ;

__attribute__((used)) static int i2c_device_resume(struct device *dev)
{
 struct i2c_client *client = i2c_verify_client(dev);
 struct i2c_driver *driver;

 if (!client || !dev->driver)
  return 0;
 driver = to_i2c_driver(dev->driver);
 if (!driver->resume)
  return 0;
 return driver->resume(client);
}
