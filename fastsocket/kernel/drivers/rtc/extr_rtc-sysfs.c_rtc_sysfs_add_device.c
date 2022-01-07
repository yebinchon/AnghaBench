
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct rtc_device {TYPE_1__ dev; } ;


 int dev_attr_wakealarm ;
 int dev_err (int ,char*,int) ;
 int device_create_file (TYPE_1__*,int *) ;
 int rtc_does_wakealarm (struct rtc_device*) ;

void rtc_sysfs_add_device(struct rtc_device *rtc)
{
 int err;


 if (!rtc_does_wakealarm(rtc))
  return;

 err = device_create_file(&rtc->dev, &dev_attr_wakealarm);
 if (err)
  dev_err(rtc->dev.parent,
   "failed to create alarm attribute, %d\n", err);
}
