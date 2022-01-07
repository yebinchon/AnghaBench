
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thmc50_data {scalar_t__ has_temp3; int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int ) ;
 struct thmc50_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct thmc50_data*) ;
 int sysfs_remove_group (int *,int *) ;
 int temp3_group ;
 int thmc50_group ;

__attribute__((used)) static int thmc50_remove(struct i2c_client *client)
{
 struct thmc50_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &thmc50_group);
 if (data->has_temp3)
  sysfs_remove_group(&client->dev.kobj, &temp3_group);

 kfree(data);

 return 0;
}
