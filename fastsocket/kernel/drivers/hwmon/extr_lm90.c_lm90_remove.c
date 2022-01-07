
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm90_data {scalar_t__ kind; int hwmon_dev; } ;
struct TYPE_4__ {int kobj; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct TYPE_3__ {int dev_attr; } ;


 int dev_attr_pec ;
 int device_remove_file (TYPE_2__*,int *) ;
 int hwmon_device_unregister (int ) ;
 struct lm90_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct lm90_data*) ;
 int lm90_group ;
 scalar_t__ max6646 ;
 scalar_t__ max6657 ;
 TYPE_1__ sensor_dev_attr_temp2_offset ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int lm90_remove(struct i2c_client *client)
{
 struct lm90_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &lm90_group);
 device_remove_file(&client->dev, &dev_attr_pec);
 if (data->kind != max6657 && data->kind != max6646)
  device_remove_file(&client->dev,
       &sensor_dev_attr_temp2_offset.dev_attr);

 kfree(data);
 return 0;
}
