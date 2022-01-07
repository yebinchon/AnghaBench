
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temp_data {int valid; int temp; int tjmax; int update_lock; scalar_t__ last_updated; int status_reg; int cpu; } ;
struct sensor_device_attribute {size_t index; } ;
struct platform_data {struct temp_data** core_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EAGAIN ;
 scalar_t__ HZ ;
 struct platform_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdmsr_on_cpu (int ,int ,int*,int*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev,
   struct device_attribute *devattr, char *buf)
{
 u32 eax, edx;
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct platform_data *pdata = dev_get_drvdata(dev);
 struct temp_data *tdata = pdata->core_data[attr->index];

 mutex_lock(&tdata->update_lock);


 if (!tdata->valid || time_after(jiffies, tdata->last_updated + HZ)) {
  rdmsr_on_cpu(tdata->cpu, tdata->status_reg, &eax, &edx);
  tdata->valid = 0;

  if (eax & 0x80000000) {
   tdata->temp = tdata->tjmax -
     ((eax >> 16) & 0x7f) * 1000;
   tdata->valid = 1;
  }
  tdata->last_updated = jiffies;
 }

 mutex_unlock(&tdata->update_lock);
 return tdata->valid ? sprintf(buf, "%d\n", tdata->temp) : -EAGAIN;
}
