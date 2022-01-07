
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt1211_data {int* fan_div; int fan_ctl; int* fan_min; int update_lock; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int RPM_TO_REG (long,int) ;


 int VT1211_REG_FAN_DIV ;
 int VT1211_REG_FAN_MIN (int) ;
 int dev_dbg (struct device*,char*,int) ;
 struct vt1211_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int vt1211_read8 (struct vt1211_data*,int ) ;
 int vt1211_write8 (struct vt1211_data*,int ,int) ;

__attribute__((used)) static ssize_t set_fan(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct vt1211_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *sensor_attr_2 =
      to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int fn = sensor_attr_2->nr;
 long val = simple_strtol(buf, ((void*)0), 10);
 int reg;

 mutex_lock(&data->update_lock);


 reg = vt1211_read8(data, VT1211_REG_FAN_DIV);
 data->fan_div[0] = (reg >> 4) & 3;
 data->fan_div[1] = (reg >> 6) & 3;
 data->fan_ctl = reg & 0xf;

 switch (fn) {
 case 128:
  data->fan_min[ix] = RPM_TO_REG(val, data->fan_div[ix]);
  vt1211_write8(data, VT1211_REG_FAN_MIN(ix),
         data->fan_min[ix]);
  break;
 case 129:
  switch (val) {
   case 1: data->fan_div[ix] = 0; break;
   case 2: data->fan_div[ix] = 1; break;
   case 4: data->fan_div[ix] = 2; break;
   case 8: data->fan_div[ix] = 3; break;
   default:
    count = -EINVAL;
    dev_warn(dev, "fan div value %ld not "
      "supported. Choose one of 1, 2, "
      "4, or 8.\n", val);
    goto EXIT;
  }
  vt1211_write8(data, VT1211_REG_FAN_DIV,
         ((data->fan_div[1] << 6) |
          (data->fan_div[0] << 4) |
    data->fan_ctl));
  break;
 default:
  dev_dbg(dev, "Unknown attr fetch (%d)\n", fn);
 }

EXIT:
 mutex_unlock(&data->update_lock);
 return count;
}
