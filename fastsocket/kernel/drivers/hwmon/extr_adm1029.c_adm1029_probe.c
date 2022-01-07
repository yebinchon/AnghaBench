
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adm1029_data {int hwmon_dev; int update_lock; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adm1029_group ;
 scalar_t__ adm1029_init_client (struct i2c_client*) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct adm1029_data*) ;
 int kfree (struct adm1029_data*) ;
 struct adm1029_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adm1029_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adm1029_data *data;
 int err;

 data = kzalloc(sizeof(struct adm1029_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);





 if (adm1029_init_client(client) == 0) {
  err = -ENODEV;
  goto exit_free;
 }


 if ((err = sysfs_create_group(&client->dev.kobj, &adm1029_group)))
  goto exit_free;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

 exit_remove_files:
 sysfs_remove_group(&client->dev.kobj, &adm1029_group);
 exit_free:
 kfree(data);
 exit:
 return err;
}
