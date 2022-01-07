
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int owner; } ;
struct TYPE_3__ {int devt; } ;
struct rtc_device {scalar_t__ id; int owner; TYPE_2__ char_dev; int uie_timer; int uie_task; TYPE_1__ dev; int name; } ;


 int INIT_WORK (int *,int ) ;
 int MAJOR (int ) ;
 int MKDEV (int ,scalar_t__) ;
 scalar_t__ RTC_DEV_MAX ;
 int cdev_init (TYPE_2__*,int *) ;
 int pr_debug (char*,int ) ;
 int rtc_dev_fops ;
 int rtc_devt ;
 int rtc_uie_task ;
 int rtc_uie_timer ;
 int setup_timer (int *,int ,unsigned long) ;

void rtc_dev_prepare(struct rtc_device *rtc)
{
 if (!rtc_devt)
  return;

 if (rtc->id >= RTC_DEV_MAX) {
  pr_debug("%s: too many RTC devices\n", rtc->name);
  return;
 }

 rtc->dev.devt = MKDEV(MAJOR(rtc_devt), rtc->id);






 cdev_init(&rtc->char_dev, &rtc_dev_fops);
 rtc->char_dev.owner = rtc->owner;
}
