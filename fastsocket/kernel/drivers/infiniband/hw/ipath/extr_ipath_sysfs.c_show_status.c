
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {scalar_t__* ipath_statusp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PAGE_SIZE ;
 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,unsigned long long) ;

__attribute__((used)) static ssize_t show_status(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 ssize_t ret;

 if (!dd->ipath_statusp) {
  ret = -EINVAL;
  goto bail;
 }

 ret = scnprintf(buf, PAGE_SIZE, "0x%llx\n",
   (unsigned long long) *(dd->ipath_statusp));

bail:
 return ret;
}
