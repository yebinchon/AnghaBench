
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ads7846 {int lock; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int ads7846_disable (struct ads7846*) ;
 int ads7846_enable (struct ads7846*) ;
 struct ads7846* dev_get_drvdata (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t ads7846_disable_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct ads7846 *ts = dev_get_drvdata(dev);
 unsigned long i;

 if (strict_strtoul(buf, 10, &i))
  return -EINVAL;

 spin_lock_irq(&ts->lock);

 if (i)
  ads7846_disable(ts);
 else
  ads7846_enable(ts);

 spin_unlock_irq(&ts->lock);

 return count;
}
