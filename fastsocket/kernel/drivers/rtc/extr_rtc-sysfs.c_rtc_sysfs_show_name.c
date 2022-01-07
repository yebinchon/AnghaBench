
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int sprintf (char*,char*,char*) ;
 TYPE_1__* to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
rtc_sysfs_show_name(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 return sprintf(buf, "%s\n", to_rtc_device(dev)->name);
}
