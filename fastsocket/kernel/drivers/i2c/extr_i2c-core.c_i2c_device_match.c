
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_driver {scalar_t__ id_table; } ;
struct i2c_client {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int * i2c_match_id (scalar_t__,struct i2c_client*) ;
 struct i2c_client* i2c_verify_client (struct device*) ;
 struct i2c_driver* to_i2c_driver (struct device_driver*) ;

__attribute__((used)) static int i2c_device_match(struct device *dev, struct device_driver *drv)
{
 struct i2c_client *client = i2c_verify_client(dev);
 struct i2c_driver *driver;

 if (!client)
  return 0;

 driver = to_i2c_driver(drv);

 if (driver->id_table)
  return i2c_match_id(driver->id_table, client) != ((void*)0);

 return 0;
}
