
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; int adapter; } ;
struct ad7414_data {int hwmon_dev; int lock; } ;


 int AD7414_REG_CONF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ad7414_group ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_warn (TYPE_1__*,char*) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ad7414_data*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kfree (struct ad7414_data*) ;
 struct ad7414_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int ad7414_probe(struct i2c_client *client,
   const struct i2c_device_id *dev_id)
{
 struct ad7414_data *data;
 int conf;
 int err = 0;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_READ_WORD_DATA))
  goto exit;

 data = kzalloc(sizeof(struct ad7414_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->lock);

 dev_info(&client->dev, "chip found\n");


 conf = i2c_smbus_read_byte_data(client, AD7414_REG_CONF);
 if (conf < 0)
  dev_warn(&client->dev,
    "ad7414_probe unable to read config register.\n");
 else {
  conf &= ~(1 << 7);
  i2c_smbus_write_byte_data(client, AD7414_REG_CONF, conf);
 }


 err = sysfs_create_group(&client->dev.kobj, &ad7414_group);
 if (err)
  goto exit_free;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 sysfs_remove_group(&client->dev.kobj, &ad7414_group);
exit_free:
 kfree(data);
exit:
 return err;
}
