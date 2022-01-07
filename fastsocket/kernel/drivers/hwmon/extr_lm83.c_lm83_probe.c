
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm83_data {int hwmon_dev; int update_lock; scalar_t__ valid; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm83_data*) ;
 int kfree (struct lm83_data*) ;
 struct lm83_data* kzalloc (int,int ) ;
 scalar_t__ lm83 ;
 int lm83_group ;
 int lm83_group_opt ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int lm83_probe(struct i2c_client *new_client,
        const struct i2c_device_id *id)
{
 struct lm83_data *data;
 int err;

 data = kzalloc(sizeof(struct lm83_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(new_client, data);
 data->valid = 0;
 mutex_init(&data->update_lock);
 if ((err = sysfs_create_group(&new_client->dev.kobj, &lm83_group)))
  goto exit_free;

 if (id->driver_data == lm83) {
  if ((err = sysfs_create_group(&new_client->dev.kobj,
           &lm83_group_opt)))
   goto exit_remove_files;
 }

 data->hwmon_dev = hwmon_device_register(&new_client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

exit_remove_files:
 sysfs_remove_group(&new_client->dev.kobj, &lm83_group);
 sysfs_remove_group(&new_client->dev.kobj, &lm83_group_opt);
exit_free:
 kfree(data);
exit:
 return err;
}
