
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct ad7418_data {int attrs; int hwmon_dev; } ;


 int hwmon_device_unregister (int ) ;
 struct ad7418_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct ad7418_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int ad7418_remove(struct i2c_client *client)
{
 struct ad7418_data *data = i2c_get_clientdata(client);
 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &data->attrs);
 kfree(data);
 return 0;
}
