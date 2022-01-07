
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max6650_data {int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int ) ;
 struct max6650_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct max6650_data*) ;
 int max6650_attr_grp ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int max6650_remove(struct i2c_client *client)
{
 struct max6650_data *data = i2c_get_clientdata(client);

 sysfs_remove_group(&client->dev.kobj, &max6650_attr_grp);
 hwmon_device_unregister(data->hwmon_dev);
 kfree(data);
 return 0;
}
