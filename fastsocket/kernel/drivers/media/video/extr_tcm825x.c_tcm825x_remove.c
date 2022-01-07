
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcm825x_sensor {int v4l2_int_device; } ;
struct i2c_client {int adapter; } ;


 int ENODEV ;
 struct tcm825x_sensor* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int v4l2_int_device_unregister (int ) ;

__attribute__((used)) static int tcm825x_remove(struct i2c_client *client)
{
 struct tcm825x_sensor *sensor = i2c_get_clientdata(client);

 if (!client->adapter)
  return -ENODEV;

 v4l2_int_device_unregister(sensor->v4l2_int_device);
 i2c_set_clientdata(client, ((void*)0));

 return 0;
}
