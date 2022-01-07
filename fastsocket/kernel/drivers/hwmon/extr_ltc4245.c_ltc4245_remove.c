
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltc4245_data {int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int ) ;
 struct ltc4245_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct ltc4245_data*) ;
 int ltc4245_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int ltc4245_remove(struct i2c_client *client)
{
 struct ltc4245_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &ltc4245_group);

 kfree(data);

 return 0;
}
