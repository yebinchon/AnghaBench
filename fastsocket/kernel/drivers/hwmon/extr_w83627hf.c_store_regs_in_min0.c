
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct w83627hf_data {int vrm_ovt; scalar_t__ type; int update_lock; int * in_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int IN_TO_REG (int) ;
 int SENSORS_LIMIT (int,int ,int) ;
 int W83781D_REG_IN_MIN (int ) ;
 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 int w83627hf_write_value (struct w83627hf_data*,int ,int ) ;
 scalar_t__ w83627thf ;
 scalar_t__ w83637hf ;
 scalar_t__ w83687thf ;

__attribute__((used)) static ssize_t store_regs_in_min0(struct device *dev, struct device_attribute *attr,
 const char *buf, size_t count)
{
 struct w83627hf_data *data = dev_get_drvdata(dev);
 u32 val;

 val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);

 if ((data->vrm_ovt & 0x01) &&
  (w83627thf == data->type || w83637hf == data->type
   || w83687thf == data->type))


  data->in_min[0] =
   SENSORS_LIMIT(((val * 100) - 70000 + 244) / 488, 0,
     255);
 else

  data->in_min[0] = IN_TO_REG(val);

 w83627hf_write_value(data, W83781D_REG_IN_MIN(0), data->in_min[0]);
 mutex_unlock(&data->update_lock);
 return count;
}
