
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_lid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t show_lid(struct device *dev,
   struct device_attribute *attr,
   char *buf)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);

 return scnprintf(buf, PAGE_SIZE, "0x%x\n", dd->ipath_lid);
}
