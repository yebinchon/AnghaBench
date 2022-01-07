
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct lm75_data {int orig_conf; int hwmon_dev; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; int name; int adapter; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int LM75_REG_CONF ;
 int PTR_ERR (int ) ;
 int dev_dbg (TYPE_1__*,char*,int) ;
 int dev_info (TYPE_1__*,char*,int ,int ) ;
 int dev_name (int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm75_data*) ;
 int kfree (struct lm75_data*) ;
 struct lm75_data* kzalloc (int,int ) ;
 int lm75_group ;
 int lm75_read_value (struct i2c_client*,int ) ;
 int lm75_write_value (struct i2c_client*,int ,int) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int
lm75_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct lm75_data *data;
 int status;
 u8 set_mask, clr_mask;
 int new;

 if (!i2c_check_functionality(client->adapter,
   I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA))
  return -EIO;

 data = kzalloc(sizeof(struct lm75_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);




 set_mask = 0;
 clr_mask = (1 << 0)
  | (1 << 6) | (1 << 5);


 status = lm75_read_value(client, LM75_REG_CONF);
 if (status < 0) {
  dev_dbg(&client->dev, "Can't read config? %d\n", status);
  goto exit_free;
 }
 data->orig_conf = status;
 new = status & ~clr_mask;
 new |= set_mask;
 if (status != new)
  lm75_write_value(client, LM75_REG_CONF, new);
 dev_dbg(&client->dev, "Config %02x\n", new);


 status = sysfs_create_group(&client->dev.kobj, &lm75_group);
 if (status)
  goto exit_free;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  status = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 dev_info(&client->dev, "%s: sensor '%s'\n",
   dev_name(data->hwmon_dev), client->name);

 return 0;

exit_remove:
 sysfs_remove_group(&client->dev.kobj, &lm75_group);
exit_free:
 i2c_set_clientdata(client, ((void*)0));
 kfree(data);
 return status;
}
