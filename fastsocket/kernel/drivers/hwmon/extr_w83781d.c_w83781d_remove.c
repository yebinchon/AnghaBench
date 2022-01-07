
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {scalar_t__* lm75; int hwmon_dev; } ;
struct device {int kobj; } ;
struct i2c_client {struct device dev; } ;


 int hwmon_device_unregister (int ) ;
 struct w83781d_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int i2c_unregister_device (scalar_t__) ;
 int kfree (struct w83781d_data*) ;
 int sysfs_remove_group (int *,int *) ;
 int w83781d_group ;
 int w83781d_group_opt ;

__attribute__((used)) static int
w83781d_remove(struct i2c_client *client)
{
 struct w83781d_data *data = i2c_get_clientdata(client);
 struct device *dev = &client->dev;

 hwmon_device_unregister(data->hwmon_dev);

 sysfs_remove_group(&dev->kobj, &w83781d_group);
 sysfs_remove_group(&dev->kobj, &w83781d_group_opt);

 if (data->lm75[0])
  i2c_unregister_device(data->lm75[0]);
 if (data->lm75[1])
  i2c_unregister_device(data->lm75[1]);

 i2c_set_clientdata(client, ((void*)0));
 kfree(data);

 return 0;
}
