
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adt7470_data {int attrs; int hwmon_dev; int auto_update_stop; int auto_update; } ;


 int hwmon_device_unregister (int ) ;
 struct adt7470_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct adt7470_data*) ;
 int kthread_stop (int ) ;
 int sysfs_remove_group (int *,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int adt7470_remove(struct i2c_client *client)
{
 struct adt7470_data *data = i2c_get_clientdata(client);

 kthread_stop(data->auto_update);
 wait_for_completion(&data->auto_update_stop);
 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &data->attrs);
 kfree(data);
 return 0;
}
