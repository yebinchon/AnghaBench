
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct ds1621_data {int hwmon_dev; } ;


 int ds1621_group ;
 int hwmon_device_unregister (int ) ;
 struct ds1621_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct ds1621_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int ds1621_remove(struct i2c_client *client)
{
 struct ds1621_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &ds1621_group);

 kfree(data);

 return 0;
}
