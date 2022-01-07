
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt1211_data {int update_lock; void** temp_hyst; void** temp_max; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;




 void* TEMP_TO_REG (int,long) ;
 int dev_dbg (struct device*,char*,int) ;
 struct vt1211_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * regtemphyst ;
 int * regtempmax ;
 long simple_strtol (char const*,int *,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int vt1211_write8 (struct vt1211_data*,int ,void*) ;

__attribute__((used)) static ssize_t set_temp(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct vt1211_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *sensor_attr_2 =
      to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int fn = sensor_attr_2->nr;
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 switch (fn) {
 case 129:
  data->temp_max[ix] = TEMP_TO_REG(ix, val);
  vt1211_write8(data, regtempmax[ix],
         data->temp_max[ix]);
  break;
 case 128:
  data->temp_hyst[ix] = TEMP_TO_REG(ix, val);
  vt1211_write8(data, regtemphyst[ix],
         data->temp_hyst[ix]);
  break;
 default:
  dev_dbg(dev, "Unknown attr fetch (%d)\n", fn);
 }
 mutex_unlock(&data->update_lock);

 return count;
}
