
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_driver {int (* probe ) (struct i2c_client*,int ) ;int id_table; } ;
struct i2c_client {int flags; struct i2c_driver* driver; int dev; } ;
struct device {int driver; } ;


 int ENODEV ;
 int I2C_CLIENT_WAKE ;
 int dev_dbg (struct device*,char*) ;
 int device_can_wakeup (int *) ;
 int device_init_wakeup (int *,int) ;
 int i2c_match_id (int ,struct i2c_client*) ;
 struct i2c_client* i2c_verify_client (struct device*) ;
 int stub1 (struct i2c_client*,int ) ;
 struct i2c_driver* to_i2c_driver (int ) ;

__attribute__((used)) static int i2c_device_probe(struct device *dev)
{
 struct i2c_client *client = i2c_verify_client(dev);
 struct i2c_driver *driver;
 int status;

 if (!client)
  return 0;

 driver = to_i2c_driver(dev->driver);
 if (!driver->probe || !driver->id_table)
  return -ENODEV;
 client->driver = driver;
 if (!device_can_wakeup(&client->dev))
  device_init_wakeup(&client->dev,
     client->flags & I2C_CLIENT_WAKE);
 dev_dbg(dev, "probe\n");

 status = driver->probe(client, i2c_match_id(driver->id_table, client));
 if (status)
  client->driver = ((void*)0);
 return status;
}
