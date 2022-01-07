
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_device_id {int driver_data; } ;
struct TYPE_6__ {int kobj; } ;
struct i2c_client {TYPE_3__ dev; int name; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_5__ {int attrs; } ;
struct ad7418_data {int type; int adc_max; TYPE_1__ attrs; int hwmon_dev; int lock; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;

 int ad7416_attributes ;

 int ad7417_attributes ;

 int ad7418_attributes ;
 int ad7418_init_client (struct i2c_client*) ;
 int dev_info (TYPE_3__*,char*,int ) ;
 int hwmon_device_register (TYPE_3__*) ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ad7418_data*) ;
 int kfree (struct ad7418_data*) ;
 struct ad7418_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,TYPE_1__*) ;
 int sysfs_remove_group (int *,TYPE_1__*) ;

__attribute__((used)) static int ad7418_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct ad7418_data *data;
 int err;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
     I2C_FUNC_SMBUS_WORD_DATA)) {
  err = -EOPNOTSUPP;
  goto exit;
 }

 if (!(data = kzalloc(sizeof(struct ad7418_data), GFP_KERNEL))) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);

 mutex_init(&data->lock);
 data->type = id->driver_data;

 switch (data->type) {
 case 130:
  data->adc_max = 0;
  data->attrs.attrs = ad7416_attributes;
  break;

 case 129:
  data->adc_max = 4;
  data->attrs.attrs = ad7417_attributes;
  break;

 case 128:
  data->adc_max = 1;
  data->attrs.attrs = ad7418_attributes;
  break;
 }

 dev_info(&client->dev, "%s chip found\n", client->name);


 ad7418_init_client(client);


 if ((err = sysfs_create_group(&client->dev.kobj, &data->attrs)))
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
