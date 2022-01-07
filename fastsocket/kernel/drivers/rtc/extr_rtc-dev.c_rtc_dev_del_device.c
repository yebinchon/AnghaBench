
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ devt; } ;
struct rtc_device {int char_dev; TYPE_1__ dev; } ;


 int cdev_del (int *) ;

void rtc_dev_del_device(struct rtc_device *rtc)
{
 if (rtc->dev.devt)
  cdev_del(&rtc->char_dev);
}
