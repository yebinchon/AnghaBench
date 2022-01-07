
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adm1021_data {scalar_t__ type; int hwmon_dev; int update_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adm1021_group ;
 int adm1021_init_client (struct i2c_client*) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct adm1021_data*) ;
 int kfree (struct adm1021_data*) ;
 struct adm1021_data* kzalloc (int,int ) ;
 scalar_t__ lm84 ;
 int mutex_init (int *) ;
 int pr_debug (char*) ;
 int read_only ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adm1021_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adm1021_data *data;
 int err;

 data = kzalloc(sizeof(struct adm1021_data), GFP_KERNEL);
 if (!data) {
  pr_debug("adm1021: detect failed, kzalloc failed!\n");
  err = -ENOMEM;
  goto error0;
 }

 i2c_set_clientdata(client, data);
 data->type = id->driver_data;
 mutex_init(&data->update_lock);


 if (data->type != lm84 && !read_only)
  adm1021_init_client(client);


 if ((err = sysfs_create_group(&client->dev.kobj, &adm1021_group)))
  goto error1;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto error3;
 }

 return 0;

error3:
 sysfs_remove_group(&client->dev.kobj, &adm1021_group);
error1:
 kfree(data);
error0:
 return err;
}
