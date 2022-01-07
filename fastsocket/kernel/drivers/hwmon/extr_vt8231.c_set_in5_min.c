
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8231_data {int update_lock; int * in_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int SENSORS_LIMIT (unsigned long,int ,int) ;
 struct vt8231_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * regvoltmin ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 int vt8231_write_value (struct vt8231_data*,int ,int ) ;

__attribute__((used)) static ssize_t set_in5_min(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct vt8231_data *data = dev_get_drvdata(dev);
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->in_min[5] = SENSORS_LIMIT(((val * 958 * 34) / (10000 * 54)) + 3,
     0, 255);
 vt8231_write_value(data, regvoltmin[5], data->in_min[5]);
 mutex_unlock(&data->update_lock);
 return count;
}
