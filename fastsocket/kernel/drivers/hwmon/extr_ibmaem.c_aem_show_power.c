
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int dummy; } ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aem_data {int* energy; int lock; int * power_period; } ;
typedef int ssize_t ;


 int NSEC_PER_SEC ;
 int UJ_PER_MJ ;
 struct aem_data* dev_get_drvdata (struct device*) ;
 scalar_t__ div64_u64 (int,int) ;
 int getnstimeofday (struct timespec*) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long schedule_timeout_interruptible (int ) ;
 int sprintf (char*,char*,unsigned long long) ;
 int timespec_to_ns (struct timespec*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int update_aem_energy_one (struct aem_data*,size_t) ;

__attribute__((used)) static ssize_t aem_show_power(struct device *dev,
         struct device_attribute *devattr,
         char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct aem_data *data = dev_get_drvdata(dev);
 u64 before, after, delta, time;
 signed long leftover;
 struct timespec b, a;

 mutex_lock(&data->lock);
 update_aem_energy_one(data, attr->index);
 getnstimeofday(&b);
 before = data->energy[attr->index];

 leftover = schedule_timeout_interruptible(
   msecs_to_jiffies(data->power_period[attr->index])
     );
 if (leftover) {
  mutex_unlock(&data->lock);
  return 0;
 }

 update_aem_energy_one(data, attr->index);
 getnstimeofday(&a);
 after = data->energy[attr->index];
 mutex_unlock(&data->lock);

 time = timespec_to_ns(&a) - timespec_to_ns(&b);
 delta = (after - before) * UJ_PER_MJ;

 return sprintf(buf, "%llu\n",
  (unsigned long long)div64_u64(delta * NSEC_PER_SEC, time));
}
