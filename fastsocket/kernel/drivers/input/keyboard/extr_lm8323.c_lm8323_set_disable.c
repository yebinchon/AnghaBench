
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm8323_chip {int kp_enabled; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct lm8323_chip* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t lm8323_set_disable(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct lm8323_chip *lm = dev_get_drvdata(dev);
 int ret;
 unsigned long i;

 ret = strict_strtoul(buf, 10, &i);

 mutex_lock(&lm->lock);
 lm->kp_enabled = !i;
 mutex_unlock(&lm->lock);

 return count;
}
