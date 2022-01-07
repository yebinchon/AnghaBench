
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int update_lock; int * in_max; } ;
typedef size_t ssize_t ;


 int * ADM1026_REG_IN_MAX ;
 int INS_TO_REG (int,int) ;
 int adm1026_write_value (struct i2c_client*,int ,int ) ;
 struct adm1026_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_in_max(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct adm1026_data *data = i2c_get_clientdata(client);
 int val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->in_max[nr] = INS_TO_REG(nr, val);
 adm1026_write_value(client, ADM1026_REG_IN_MAX[nr], data->in_max[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
