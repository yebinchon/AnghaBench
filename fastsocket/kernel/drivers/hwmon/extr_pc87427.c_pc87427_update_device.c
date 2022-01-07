
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc87427_data {int fan_enabled; int lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;


 scalar_t__ HZ ;
 struct pc87427_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pc87427_readall_fan (struct pc87427_data*,int) ;
 int time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct pc87427_data *pc87427_update_device(struct device *dev)
{
 struct pc87427_data *data = dev_get_drvdata(dev);
 int i;

 mutex_lock(&data->lock);
 if (!time_after(jiffies, data->last_updated + HZ)
  && data->last_updated)
  goto done;


 for (i = 0; i < 8; i++) {
  if (!(data->fan_enabled & (1 << i)))
   continue;
  pc87427_readall_fan(data, i);
 }
 data->last_updated = jiffies;

done:
 mutex_unlock(&data->lock);
 return data;
}
