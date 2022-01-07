
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmp421_data {int * hwmon_dev; int channels; int update_lock; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tmp421_data*) ;
 int kfree (struct tmp421_data*) ;
 struct tmp421_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int tmp421_group ;
 int tmp421_init_client (struct i2c_client*) ;

__attribute__((used)) static int tmp421_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct tmp421_data *data;
 int err;

 data = kzalloc(sizeof(struct tmp421_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);
 data->channels = id->driver_data;

 err = tmp421_init_client(client);
 if (err)
  goto exit_free;

 err = sysfs_create_group(&client->dev.kobj, &tmp421_group);
 if (err)
  goto exit_free;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  data->hwmon_dev = ((void*)0);
  goto exit_remove;
 }
 return 0;

exit_remove:
 sysfs_remove_group(&client->dev.kobj, &tmp421_group);

exit_free:
 i2c_set_clientdata(client, ((void*)0));
 kfree(data);

 return err;
}
