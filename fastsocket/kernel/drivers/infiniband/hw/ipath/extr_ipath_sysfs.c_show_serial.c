
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_serial; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 int memcpy (char*,int ,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t show_serial(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);

 buf[sizeof dd->ipath_serial] = '\0';
 memcpy(buf, dd->ipath_serial, sizeof dd->ipath_serial);
 strcat(buf, "\n");
 return strlen(buf);
}
