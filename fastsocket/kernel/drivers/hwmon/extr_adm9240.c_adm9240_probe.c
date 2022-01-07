
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adm9240_data {int hwmon_dev; int update_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adm9240_group ;
 int adm9240_init_client (struct i2c_client*) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct adm9240_data*) ;
 int kfree (struct adm9240_data*) ;
 struct adm9240_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adm9240_probe(struct i2c_client *new_client,
    const struct i2c_device_id *id)
{
 struct adm9240_data *data;
 int err;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(new_client, data);
 mutex_init(&data->update_lock);

 adm9240_init_client(new_client);


 if ((err = sysfs_create_group(&new_client->dev.kobj, &adm9240_group)))
  goto exit_free;

 data->hwmon_dev = hwmon_device_register(&new_client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 sysfs_remove_group(&new_client->dev.kobj, &adm9240_group);
exit_free:
 kfree(data);
exit:
 return err;
}
