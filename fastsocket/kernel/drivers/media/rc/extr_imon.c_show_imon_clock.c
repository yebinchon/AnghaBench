
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imon_context {int lock; scalar_t__ display_isopen; int display_supported; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t ENODEV ;
 int PAGE_SIZE ;
 struct imon_context* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t show_imon_clock(struct device *d,
          struct device_attribute *attr, char *buf)
{
 struct imon_context *ictx = dev_get_drvdata(d);
 size_t len;

 if (!ictx)
  return -ENODEV;

 mutex_lock(&ictx->lock);

 if (!ictx->display_supported) {
  len = snprintf(buf, PAGE_SIZE, "Not supported.");
 } else {
  len = snprintf(buf, PAGE_SIZE,
   "To set the clock on your iMON display:\n"
   "# date \"+%%y %%m %%d %%w %%H %%M %%S\" > imon_clock\n"
   "%s", ictx->display_isopen ?
   "\nNOTE: imon device must be closed\n" : "");
 }

 mutex_unlock(&ictx->lock);

 return len;
}
