
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct dme1737_data {int* fan_min; int* fan_opt; int* fan_max; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DME1737_REG_FAN_MAX (int) ;
 int DME1737_REG_FAN_MIN (int) ;
 int DME1737_REG_FAN_OPT (int) ;
 size_t EINVAL ;
 int FAN_MAX_TO_REG (long) ;
 void* FAN_TO_REG (long,int ) ;
 int FAN_TPC_FROM_REG (int) ;
 int FAN_TYPE_TO_REG (long,int) ;



 int dev_dbg (struct device*,char*,int) ;
 struct dme1737_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*,long) ;
 int dme1737_read (struct dme1737_data*,int ) ;
 int dme1737_write (struct dme1737_data*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct dme1737_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2
  *sensor_attr_2 = to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int fn = sensor_attr_2->nr;
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 switch (fn) {
 case 129:
  if (ix < 4) {
   data->fan_min[ix] = FAN_TO_REG(val, 0);
  } else {

   data->fan_opt[ix] = dme1737_read(data,
      DME1737_REG_FAN_OPT(ix));

   data->fan_min[ix] = FAN_TO_REG(val,
     FAN_TPC_FROM_REG(data->fan_opt[ix]));
  }
  dme1737_write(data, DME1737_REG_FAN_MIN(ix),
         data->fan_min[ix] & 0xff);
  dme1737_write(data, DME1737_REG_FAN_MIN(ix) + 1,
         data->fan_min[ix] >> 8);
  break;
 case 130:

  data->fan_max[ix - 4] = FAN_MAX_TO_REG(val);
  dme1737_write(data, DME1737_REG_FAN_MAX(ix),
         data->fan_max[ix - 4]);
  break;
 case 128:

  if (!(val == 1 || val == 2 || val == 4)) {
   count = -EINVAL;
   dev_warn(dev, "Fan type value %ld not "
     "supported. Choose one of 1, 2, or 4.\n",
     val);
   goto exit;
  }
  data->fan_opt[ix] = FAN_TYPE_TO_REG(val, dme1737_read(data,
     DME1737_REG_FAN_OPT(ix)));
  dme1737_write(data, DME1737_REG_FAN_OPT(ix),
         data->fan_opt[ix]);
  break;
 default:
  dev_dbg(dev, "Unknown function %d.\n", fn);
 }
exit:
 mutex_unlock(&data->update_lock);

 return count;
}
