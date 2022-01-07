
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ap_device {int device_type; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct ap_device* to_ap_dev (struct device*) ;

__attribute__((used)) static ssize_t ap_hwtype_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct ap_device *ap_dev = to_ap_dev(dev);
 return snprintf(buf, PAGE_SIZE, "%d\n", ap_dev->device_type);
}
