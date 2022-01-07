
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
struct adt7462_data {TYPE_1__ attrs; int hwmon_dev; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adt7462_attr ;
 int dev_info (TYPE_3__*,char*,int ) ;
 int hwmon_device_register (TYPE_3__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct adt7462_data*) ;
 int kfree (struct adt7462_data*) ;
 struct adt7462_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,TYPE_1__*) ;
 int sysfs_remove_group (int *,TYPE_1__*) ;

__attribute__((used)) static int adt7462_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adt7462_data *data;
 int err;

 data = kzalloc(sizeof(struct adt7462_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->lock);

 dev_info(&client->dev, "%s chip found\n", client->name);


 data->attrs.attrs = adt7462_attr;
 err = sysfs_create_group(&client->dev.kobj, &data->attrs);
 if (err)
  goto exit_free;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 sysfs_remove_group(&client->dev.kobj, &data->attrs);
exit_free:
 kfree(data);
exit:
 return err;
}
