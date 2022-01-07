
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83l786ng_data {int* fan_div; int hwmon_dev; void** fan_min; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {int kobj; } ;
struct i2c_client {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int W83L786NG_REG_FAN_DIV ;
 int W83L786NG_REG_FAN_MIN (int) ;
 int hwmon_device_register (struct device*) ;
 int i2c_set_clientdata (struct i2c_client*,struct w83l786ng_data*) ;
 int kfree (struct w83l786ng_data*) ;
 struct w83l786ng_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int w83l786ng_group ;
 int w83l786ng_init_client (struct i2c_client*) ;
 void* w83l786ng_read_value (struct i2c_client*,int ) ;

__attribute__((used)) static int
w83l786ng_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct w83l786ng_data *data;
 int i, err = 0;
 u8 reg_tmp;

 data = kzalloc(sizeof(struct w83l786ng_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 w83l786ng_init_client(client);


 for (i = 0; i < 2; i++) {
  data->fan_min[i] = w83l786ng_read_value(client,
      W83L786NG_REG_FAN_MIN(i));
 }


 reg_tmp = w83l786ng_read_value(client, W83L786NG_REG_FAN_DIV);
 data->fan_div[0] = reg_tmp & 0x07;
 data->fan_div[1] = (reg_tmp >> 4) & 0x07;


 if ((err = sysfs_create_group(&client->dev.kobj, &w83l786ng_group)))
  goto exit_remove;

 data->hwmon_dev = hwmon_device_register(dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;



exit_remove:
 sysfs_remove_group(&client->dev.kobj, &w83l786ng_group);
 kfree(data);
exit:
 return err;
}
