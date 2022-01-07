
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm78_data {int hwmon_dev; int type; struct i2c_client* client; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm78_data*) ;
 int kfree (struct lm78_data*) ;
 struct lm78_data* kzalloc (int,int ) ;
 int lm78_group ;
 int lm78_init_device (struct lm78_data*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int lm78_i2c_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct lm78_data *data;
 int err;

 data = kzalloc(sizeof(struct lm78_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 data->client = client;
 data->type = id->driver_data;


 lm78_init_device(data);


 err = sysfs_create_group(&client->dev.kobj, &lm78_group);
 if (err)
  goto ERROR3;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto ERROR4;
 }

 return 0;

ERROR4:
 sysfs_remove_group(&client->dev.kobj, &lm78_group);
ERROR3:
 kfree(data);
 return err;
}
