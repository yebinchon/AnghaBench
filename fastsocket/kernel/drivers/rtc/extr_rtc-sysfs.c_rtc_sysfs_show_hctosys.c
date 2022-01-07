
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int CONFIG_RTC_HCTOSYS_DEVICE ;
 int dev_name (int *) ;
 int sprintf (char*,char*) ;
 scalar_t__ strcmp (int ,int ) ;
 TYPE_1__* to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
rtc_sysfs_show_hctosys(struct device *dev, struct device_attribute *attr,
  char *buf)
{






  return sprintf(buf, "0\n");
}
