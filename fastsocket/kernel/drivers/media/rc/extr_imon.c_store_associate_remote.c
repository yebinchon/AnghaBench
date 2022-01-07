
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imon_context {int rf_isassociating; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t ENODEV ;
 struct imon_context* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_associate_24g (struct imon_context*) ;

__attribute__((used)) static ssize_t store_associate_remote(struct device *d,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct imon_context *ictx;

 ictx = dev_get_drvdata(d);

 if (!ictx)
  return -ENODEV;

 mutex_lock(&ictx->lock);
 ictx->rf_isassociating = 1;
 send_associate_24g(ictx);
 mutex_unlock(&ictx->lock);

 return count;
}
