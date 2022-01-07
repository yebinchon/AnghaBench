
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm80_data {int hwmon_dev; void** fan_min; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int LM80_REG_FAN_MIN (int) ;
 int PTR_ERR (int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm80_data*) ;
 int kfree (struct lm80_data*) ;
 struct lm80_data* kzalloc (int,int ) ;
 int lm80_group ;
 int lm80_init_client (struct i2c_client*) ;
 void* lm80_read_value (struct i2c_client*,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int lm80_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct lm80_data *data;
 int err;

 data = kzalloc(sizeof(struct lm80_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 lm80_init_client(client);


 data->fan_min[0] = lm80_read_value(client, LM80_REG_FAN_MIN(1));
 data->fan_min[1] = lm80_read_value(client, LM80_REG_FAN_MIN(2));


 if ((err = sysfs_create_group(&client->dev.kobj, &lm80_group)))
  goto error_free;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto error_remove;
 }

 return 0;

error_remove:
 sysfs_remove_group(&client->dev.kobj, &lm80_group);
error_free:
 kfree(data);
exit:
 return err;
}
