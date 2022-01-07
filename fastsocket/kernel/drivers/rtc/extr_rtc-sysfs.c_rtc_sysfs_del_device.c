
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dev; } ;


 int dev_attr_wakealarm ;
 int device_remove_file (int *,int *) ;
 scalar_t__ rtc_does_wakealarm (struct rtc_device*) ;

void rtc_sysfs_del_device(struct rtc_device *rtc)
{

 if (rtc_does_wakealarm(rtc))
  device_remove_file(&rtc->dev, &dev_attr_wakealarm);
}
