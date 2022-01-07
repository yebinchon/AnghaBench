
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct w83627hf_data {int* sens; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int* BIT_SCFG1 ;
 int* BIT_SCFG2 ;

 int W83781D_REG_SCFG1 ;
 int W83781D_REG_SCFG2 ;
 int dev_err (struct device*,char*,long) ;
 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*,int const) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int w83627hf_read_value (struct w83627hf_data*,int ) ;
 int w83627hf_write_value (struct w83627hf_data*,int ,int) ;

__attribute__((used)) static ssize_t
store_temp_type(struct device *dev, struct device_attribute *devattr,
  const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(devattr)->index;
 struct w83627hf_data *data = dev_get_drvdata(dev);
 u32 val, tmp;

 val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);

 switch (val) {
 case 1:
  tmp = w83627hf_read_value(data, W83781D_REG_SCFG1);
  w83627hf_write_value(data, W83781D_REG_SCFG1,
        tmp | BIT_SCFG1[nr]);
  tmp = w83627hf_read_value(data, W83781D_REG_SCFG2);
  w83627hf_write_value(data, W83781D_REG_SCFG2,
        tmp | BIT_SCFG2[nr]);
  data->sens[nr] = val;
  break;
 case 2:
  tmp = w83627hf_read_value(data, W83781D_REG_SCFG1);
  w83627hf_write_value(data, W83781D_REG_SCFG1,
        tmp | BIT_SCFG1[nr]);
  tmp = w83627hf_read_value(data, W83781D_REG_SCFG2);
  w83627hf_write_value(data, W83781D_REG_SCFG2,
        tmp & ~BIT_SCFG2[nr]);
  data->sens[nr] = val;
  break;
 case 128:
  dev_warn(dev, "Sensor type %d is deprecated, please use 4 "
    "instead\n", 128);

 case 4:
  tmp = w83627hf_read_value(data, W83781D_REG_SCFG1);
  w83627hf_write_value(data, W83781D_REG_SCFG1,
        tmp & ~BIT_SCFG1[nr]);
  data->sens[nr] = val;
  break;
 default:
  dev_err(dev,
         "Invalid sensor type %ld; must be 1, 2, or 4\n",
         (long) val);
  break;
 }

 mutex_unlock(&data->update_lock);
 return count;
}
