
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thmc50_data {scalar_t__ has_temp3; int hwmon_dev; int update_lock; int type; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct thmc50_data*) ;
 int kfree (struct thmc50_data*) ;
 struct thmc50_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_debug (char*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int temp3_group ;
 int thmc50_group ;
 int thmc50_init_client (struct i2c_client*) ;

__attribute__((used)) static int thmc50_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct thmc50_data *data;
 int err;

 data = kzalloc(sizeof(struct thmc50_data), GFP_KERNEL);
 if (!data) {
  pr_debug("thmc50: detect failed, kzalloc failed!\n");
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 data->type = id->driver_data;
 mutex_init(&data->update_lock);

 thmc50_init_client(client);


 if ((err = sysfs_create_group(&client->dev.kobj, &thmc50_group)))
  goto exit_free;


 if (data->has_temp3)
  if ((err = sysfs_create_group(&client->dev.kobj,
           &temp3_group)))
   goto exit_remove_sysfs_thmc50;


 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_sysfs;
 }

 return 0;

exit_remove_sysfs:
 if (data->has_temp3)
  sysfs_remove_group(&client->dev.kobj, &temp3_group);
exit_remove_sysfs_thmc50:
 sysfs_remove_group(&client->dev.kobj, &thmc50_group);
exit_free:
 kfree(data);
exit:
 return err;
}
