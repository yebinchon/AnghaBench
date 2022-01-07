
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm78_data {int update_lock; int * in_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int IN_TO_REG (unsigned long) ;
 int LM78_REG_IN_MIN (int) ;
 struct lm78_data* dev_get_drvdata (struct device*) ;
 int lm78_write_value (struct lm78_data*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_in_min(struct device *dev, struct device_attribute *da,
     const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct lm78_data *data = dev_get_drvdata(dev);
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);
 int nr = attr->index;

 mutex_lock(&data->update_lock);
 data->in_min[nr] = IN_TO_REG(val);
 lm78_write_value(data, LM78_REG_IN_MIN(nr), data->in_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
