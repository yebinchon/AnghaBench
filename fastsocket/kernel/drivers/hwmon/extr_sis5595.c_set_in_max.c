
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis5595_data {int update_lock; int * in_max; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int IN_TO_REG (unsigned long) ;
 int SIS5595_REG_IN_MAX (int) ;
 struct sis5595_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 int sis5595_write_value (struct sis5595_data*,int ,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_in_max(struct device *dev, struct device_attribute *da,
     const char *buf, size_t count)
{
 struct sis5595_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int nr = attr->index;
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->in_max[nr] = IN_TO_REG(val);
 sis5595_write_value(data, SIS5595_REG_IN_MAX(nr), data->in_max[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
