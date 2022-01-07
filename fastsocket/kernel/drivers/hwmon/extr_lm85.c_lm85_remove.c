
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm85_data {scalar_t__ type; int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 scalar_t__ emc6d100 ;
 int hwmon_device_unregister (int ) ;
 struct lm85_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct lm85_data*) ;
 int lm85_group ;
 int lm85_group_in4 ;
 int lm85_group_in567 ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int lm85_remove(struct i2c_client *client)
{
 struct lm85_data *data = i2c_get_clientdata(client);
 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &lm85_group);
 sysfs_remove_group(&client->dev.kobj, &lm85_group_in4);
 if (data->type == emc6d100)
  sysfs_remove_group(&client->dev.kobj, &lm85_group_in567);
 kfree(data);
 return 0;
}
