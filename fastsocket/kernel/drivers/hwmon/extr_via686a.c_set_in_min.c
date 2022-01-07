
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via686a_data {int update_lock; int * in_min; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int IN_TO_REG (unsigned long,int) ;
 int VIA686A_REG_IN_MIN (int) ;
 struct via686a_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int via686a_write_value (struct via686a_data*,int ,int ) ;

__attribute__((used)) static ssize_t set_in_min(struct device *dev, struct device_attribute *da,
  const char *buf, size_t count) {
 struct via686a_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int nr = attr->index;
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->in_min[nr] = IN_TO_REG(val, nr);
 via686a_write_value(data, VIA686A_REG_IN_MIN(nr),
   data->in_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
