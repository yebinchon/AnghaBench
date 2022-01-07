
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83627ehf_data {int update_lock; int * target_temp; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int * W83627EHF_REG_TARGET ;
 struct w83627ehf_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 int temp1_to_reg (int ,int ,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83627ehf_write_value (struct w83627ehf_data*,int ,int ) ;

__attribute__((used)) static ssize_t
store_target_temp(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct w83627ehf_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 u8 val = temp1_to_reg(simple_strtoul(buf, ((void*)0), 10), 0, 127000);

 mutex_lock(&data->update_lock);
 data->target_temp[nr] = val;
 w83627ehf_write_value(data, W83627EHF_REG_TARGET[nr], val);
 mutex_unlock(&data->update_lock);
 return count;
}
