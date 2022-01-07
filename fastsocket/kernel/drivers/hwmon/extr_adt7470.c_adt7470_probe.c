
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {int kobj; } ;
struct i2c_client {TYPE_3__ dev; int name; } ;
struct TYPE_5__ {int attrs; } ;
struct adt7470_data {int num_temp_sensors; TYPE_1__ attrs; int hwmon_dev; int auto_update; int auto_update_stop; int lock; int auto_update_interval; } ;


 int AUTO_UPDATE_INTERVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adt7470_attr ;
 int adt7470_init_client (struct i2c_client*) ;
 int adt7470_update_thread ;
 int dev_info (TYPE_3__*,char*,int ) ;
 int dev_name (int ) ;
 int hwmon_device_register (TYPE_3__*) ;
 int hwmon_device_unregister (int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct adt7470_data*) ;
 int init_completion (int *) ;
 int kfree (struct adt7470_data*) ;
 int kthread_run (int ,struct i2c_client*,int ) ;
 struct adt7470_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,TYPE_1__*) ;
 int sysfs_remove_group (int *,TYPE_1__*) ;

__attribute__((used)) static int adt7470_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adt7470_data *data;
 int err;

 data = kzalloc(sizeof(struct adt7470_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 data->num_temp_sensors = -1;
 data->auto_update_interval = AUTO_UPDATE_INTERVAL;

 i2c_set_clientdata(client, data);
 mutex_init(&data->lock);

 dev_info(&client->dev, "%s chip found\n", client->name);


 adt7470_init_client(client);


 data->attrs.attrs = adt7470_attr;
 if ((err = sysfs_create_group(&client->dev.kobj, &data->attrs)))
  goto exit_free;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 init_completion(&data->auto_update_stop);
 data->auto_update = kthread_run(adt7470_update_thread, client,
     dev_name(data->hwmon_dev));
 if (IS_ERR(data->auto_update))
  goto exit_unregister;

 return 0;

exit_unregister:
 hwmon_device_unregister(data->hwmon_dev);
exit_remove:
 sysfs_remove_group(&client->dev.kobj, &data->attrs);
exit_free:
 kfree(data);
exit:
 return err;
}
