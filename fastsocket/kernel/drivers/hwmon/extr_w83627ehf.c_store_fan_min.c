
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83627ehf_data {int* fan_min; int* fan_div; int* fan; int update_lock; int last_updated; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int * W83627EHF_REG_FAN_MIN ;
 int dev_dbg (struct device*,char*,int,int ,int ) ;
 struct w83627ehf_data* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,int,unsigned int,int ) ;
 int div_from_reg (int) ;
 int fan_from_reg (int,int) ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int simple_strtoul (char const*,int *,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83627ehf_write_fan_div (struct w83627ehf_data*,int) ;
 int w83627ehf_write_value (struct w83627ehf_data*,int ,unsigned int) ;

__attribute__((used)) static ssize_t
store_fan_min(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct w83627ehf_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 unsigned int val = simple_strtoul(buf, ((void*)0), 10);
 unsigned int reg;
 u8 new_div;

 mutex_lock(&data->update_lock);
 if (!val) {

  data->fan_min[nr] = 255;
  new_div = data->fan_div[nr];
  dev_info(dev, "fan%u low limit and alarm disabled\n", nr + 1);
 } else if ((reg = 1350000U / val) >= 128 * 255) {


  data->fan_min[nr] = 254;
  new_div = 7;
  dev_warn(dev, "fan%u low limit %u below minimum %u, set to "
    "minimum\n", nr + 1, val, fan_from_reg(254, 128));
 } else if (!reg) {


  data->fan_min[nr] = 1;
  new_div = 0;
  dev_warn(dev, "fan%u low limit %u above maximum %u, set to "
    "maximum\n", nr + 1, val, fan_from_reg(1, 1));
 } else {



  new_div = 0;
  while (reg > 192 && new_div < 7) {
   reg >>= 1;
   new_div++;
  }
  data->fan_min[nr] = reg;
 }



 if (new_div != data->fan_div[nr]) {

  if (data->fan[nr] != 0xff) {
   if (new_div > data->fan_div[nr])
    data->fan[nr] >>= new_div - data->fan_div[nr];
   else if (data->fan[nr] & 0x80)
    data->fan[nr] = 0xff;
   else
    data->fan[nr] <<= data->fan_div[nr] - new_div;
  }

  dev_dbg(dev, "fan%u clock divider changed from %u to %u\n",
   nr + 1, div_from_reg(data->fan_div[nr]),
   div_from_reg(new_div));
  data->fan_div[nr] = new_div;
  w83627ehf_write_fan_div(data, nr);

  data->last_updated = jiffies;
 }
 w83627ehf_write_value(data, W83627EHF_REG_FAN_MIN[nr],
         data->fan_min[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
