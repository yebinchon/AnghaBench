
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w83791d_data {int ** lm75; int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int ) ;
 struct w83791d_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int *) ;
 int kfree (struct w83791d_data*) ;
 int sysfs_remove_group (int *,int *) ;
 int w83791d_group ;

__attribute__((used)) static int w83791d_remove(struct i2c_client *client)
{
 struct w83791d_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &w83791d_group);

 if (data->lm75[0] != ((void*)0))
  i2c_unregister_device(data->lm75[0]);
 if (data->lm75[1] != ((void*)0))
  i2c_unregister_device(data->lm75[1]);

 kfree(data);
 return 0;
}
