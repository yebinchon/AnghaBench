
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct f71805f_data {int update_lock; int * temp_high; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int F71805F_REG_TEMP_HIGH (int) ;
 struct f71805f_data* dev_get_drvdata (struct device*) ;
 int f71805f_write8 (struct f71805f_data*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 int temp_to_reg (long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp_max(struct device *dev, struct device_attribute
       *devattr, const char *buf, size_t count)
{
 struct f71805f_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 int nr = attr->index;
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->temp_high[nr] = temp_to_reg(val);
 f71805f_write8(data, F71805F_REG_TEMP_HIGH(nr), data->temp_high[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
