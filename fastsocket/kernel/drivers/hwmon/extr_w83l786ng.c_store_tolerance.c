
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct w83l786ng_data {int* tolerance; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int SENSORS_LIMIT (int ,int ,int) ;
 int W83L786NG_REG_TOLERANCE ;
 struct w83l786ng_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int w83l786ng_read_value (struct i2c_client*,int ) ;
 int w83l786ng_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_tolerance(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83l786ng_data *data = i2c_get_clientdata(client);
 u32 val;
 u8 tol_tmp, tol_mask;

 val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 tol_mask = w83l786ng_read_value(client,
     W83L786NG_REG_TOLERANCE) & ((nr == 1) ? 0x0f : 0xf0);
 tol_tmp = SENSORS_LIMIT(val, 0, 15);
 tol_tmp &= 0x0f;
 data->tolerance[nr] = tol_tmp;
 if (nr == 1) {
  tol_tmp <<= 4;
 }

 w83l786ng_write_value(client, W83L786NG_REG_TOLERANCE,
         tol_mask | tol_tmp);
 mutex_unlock(&data->update_lock);
 return count;
}
