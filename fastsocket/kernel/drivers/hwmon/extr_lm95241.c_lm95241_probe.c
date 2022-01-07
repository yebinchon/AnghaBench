
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm95241_data {int hwmon_dev; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm95241_data*) ;
 int kfree (struct lm95241_data*) ;
 struct lm95241_data* kzalloc (int,int ) ;
 int lm95241_group ;
 int lm95241_init_client (struct i2c_client*) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int lm95241_probe(struct i2c_client *new_client,
    const struct i2c_device_id *id)
{
 struct lm95241_data *data;
 int err;

 data = kzalloc(sizeof(struct lm95241_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(new_client, data);
 mutex_init(&data->update_lock);


 lm95241_init_client(new_client);


 err = sysfs_create_group(&new_client->dev.kobj, &lm95241_group);
 if (err)
  goto exit_free;

 data->hwmon_dev = hwmon_device_register(&new_client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

exit_remove_files:
 sysfs_remove_group(&new_client->dev.kobj, &lm95241_group);
exit_free:
 kfree(data);
exit:
 return err;
}
