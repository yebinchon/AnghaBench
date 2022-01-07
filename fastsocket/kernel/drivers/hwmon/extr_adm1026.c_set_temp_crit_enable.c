
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int config1; int update_lock; } ;
typedef size_t ssize_t ;


 int ADM1026_REG_CONFIG1 ;
 int CFG1_THERM_HOT ;
 int adm1026_write_value (struct i2c_client*,int ,int) ;
 struct adm1026_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_temp_crit_enable(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adm1026_data *data = i2c_get_clientdata(client);
 int val = simple_strtol(buf, ((void*)0), 10);

 if ((val == 1) || (val==0)) {
  mutex_lock(&data->update_lock);
  data->config1 = (data->config1 & ~CFG1_THERM_HOT) | (val << 4);
  adm1026_write_value(client, ADM1026_REG_CONFIG1,
   data->config1);
  mutex_unlock(&data->update_lock);
 }
 return count;
}
