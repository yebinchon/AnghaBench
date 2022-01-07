
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct pc87360_data {int update_lock; int * in_crit; int in_vref; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int IN_TO_REG (long,int ) ;
 int LD_IN ;
 int PC87365_REG_TEMP_CRIT ;
 struct pc87360_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pc87360_write_value (struct pc87360_data*,int ,int,int ,int ) ;
 long simple_strtol (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_therm_crit(struct device *dev, struct device_attribute *devattr, const char *buf,
 size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct pc87360_data *data = dev_get_drvdata(dev);
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->in_crit[attr->index-11] = IN_TO_REG(val, data->in_vref);
 pc87360_write_value(data, LD_IN, attr->index, PC87365_REG_TEMP_CRIT,
       data->in_crit[attr->index-11]);
 mutex_unlock(&data->update_lock);
 return count;
}
