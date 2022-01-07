
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct it87_data {int* fan_div; int update_lock; int * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DIV_FROM_REG (int) ;
 int FAN_TO_REG (int,int ) ;
 int IT87_REG_FAN_DIV ;
 int * IT87_REG_FAN_MIN ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 int it87_read_value (struct it87_data*,int ) ;
 int it87_write_value (struct it87_data*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_min(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;

 struct it87_data *data = dev_get_drvdata(dev);
 int val = simple_strtol(buf, ((void*)0), 10);
 u8 reg;

 mutex_lock(&data->update_lock);
 reg = it87_read_value(data, IT87_REG_FAN_DIV);
 switch (nr) {
 case 0: data->fan_div[nr] = reg & 0x07; break;
 case 1: data->fan_div[nr] = (reg >> 3) & 0x07; break;
 case 2: data->fan_div[nr] = (reg & 0x40) ? 3 : 1; break;
 }

 data->fan_min[nr] = FAN_TO_REG(val, DIV_FROM_REG(data->fan_div[nr]));
 it87_write_value(data, IT87_REG_FAN_MIN[nr], data->fan_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
