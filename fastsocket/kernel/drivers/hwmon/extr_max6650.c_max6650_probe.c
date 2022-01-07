
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct max6650_data {int hwmon_dev; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct max6650_data*) ;
 int kfree (struct max6650_data*) ;
 struct max6650_data* kzalloc (int,int ) ;
 int max6650_attr_grp ;
 int max6650_init_client (struct i2c_client*) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int max6650_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct max6650_data *data;
 int err;

 if (!(data = kzalloc(sizeof(struct max6650_data), GFP_KERNEL))) {
  dev_err(&client->dev, "out of memory.\n");
  return -ENOMEM;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);




 err = max6650_init_client(client);
 if (err)
  goto err_free;

 err = sysfs_create_group(&client->dev.kobj, &max6650_attr_grp);
 if (err)
  goto err_free;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (!IS_ERR(data->hwmon_dev))
  return 0;

 err = PTR_ERR(data->hwmon_dev);
 dev_err(&client->dev, "error registering hwmon device.\n");
 sysfs_remove_group(&client->dev.kobj, &max6650_attr_grp);
err_free:
 kfree(data);
 return err;
}
