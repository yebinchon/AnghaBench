
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct max6650_data {int alarm; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MAX6650_REG_ALARM ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct max6650_data* max6650_update_device (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t get_alarm(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct max6650_data *data = max6650_update_device(dev);
 struct i2c_client *client = to_i2c_client(dev);
 int alarm = 0;

 if (data->alarm & attr->index) {
  mutex_lock(&data->update_lock);
  alarm = 1;
  data->alarm &= ~attr->index;
  data->alarm |= i2c_smbus_read_byte_data(client,
       MAX6650_REG_ALARM);
  mutex_unlock(&data->update_lock);
 }

 return sprintf(buf, "%d\n", alarm);
}
