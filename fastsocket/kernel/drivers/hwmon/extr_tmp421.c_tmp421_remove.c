
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmp421_data {int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int ) ;
 struct tmp421_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int kfree (struct tmp421_data*) ;
 int sysfs_remove_group (int *,int *) ;
 int tmp421_group ;

__attribute__((used)) static int tmp421_remove(struct i2c_client *client)
{
 struct tmp421_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &tmp421_group);

 i2c_set_clientdata(client, ((void*)0));
 kfree(data);

 return 0;
}
