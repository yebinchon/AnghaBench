
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct g760a_data {int update_lock; int set_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int G760A_REG_SET_CNT ;
 int PWM_TO_CNT (int ) ;
 int SENSORS_LIMIT (unsigned long,int ,int) ;
 struct g760a_data* g760a_update_client (struct device*) ;
 int g760a_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_pwm(struct device *dev, struct device_attribute *da,
         const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct g760a_data *data = g760a_update_client(dev);
 unsigned long val;

 if (strict_strtoul(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->set_cnt = PWM_TO_CNT(SENSORS_LIMIT(val, 0, 255));
 g760a_write_value(client, G760A_REG_SET_CNT, data->set_cnt);
 mutex_unlock(&data->update_lock);

 return count;
}
