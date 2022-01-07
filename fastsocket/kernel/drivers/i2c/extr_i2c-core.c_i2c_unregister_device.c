
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int device_unregister (int *) ;

void i2c_unregister_device(struct i2c_client *client)
{
 device_unregister(&client->dev);
}
