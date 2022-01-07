
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imon_context {int lock; scalar_t__ rf_isassociating; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct imon_context* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t show_associate_remote(struct device *d,
         struct device_attribute *attr,
         char *buf)
{
 struct imon_context *ictx = dev_get_drvdata(d);

 if (!ictx)
  return -ENODEV;

 mutex_lock(&ictx->lock);
 if (ictx->rf_isassociating)
  strcpy(buf, "associating\n");
 else
  strcpy(buf, "closed\n");

 dev_info(d, "Visit http://www.lirc.org/html/imon-24g.html for "
   "instructions on how to associate your iMON 2.4G DT/LT "
   "remote\n");
 mutex_unlock(&ictx->lock);
 return strlen(buf);
}
