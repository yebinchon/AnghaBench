
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int** temp; int config5; int alarms; int lock; } ;
typedef int ssize_t ;
typedef int s8 ;



 int CONFIG5_TEMPOFFSET ;



 size_t THERM ;
 struct adt7475_data* adt7475_update_device (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg2temp (struct adt7475_data*,int) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct adt7475_data *data = adt7475_update_device(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int out;

 switch (sattr->nr) {
 case 129:
  mutex_lock(&data->lock);
  out = data->temp[sattr->nr][sattr->index];
  if (sattr->index != 1)
   out = (out >> 4) & 0xF;
  else
   out = (out & 0xF);


  out = reg2temp(data, data->temp[THERM][sattr->index]) -
   out * 1000;
  mutex_unlock(&data->lock);
  break;

 case 128:


  mutex_lock(&data->lock);
  out = (s8)data->temp[sattr->nr][sattr->index];
  if (data->config5 & CONFIG5_TEMPOFFSET)
   out *= 1000;
  else
   out *= 500;
  mutex_unlock(&data->lock);
  break;

 case 131:
  out = (data->alarms >> (sattr->index + 4)) & 1;
  break;

 case 130:

  out = !!(data->alarms & (sattr->index ? 0x8000 : 0x4000));
  break;

 default:

  out = reg2temp(data, data->temp[sattr->nr][sattr->index]);
 }

 return sprintf(buf, "%d\n", out);
}
