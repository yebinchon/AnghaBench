
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_wkalrm {int time; } ;
struct TYPE_3__ {int parent; } ;
struct rtc_device {int ops_lock; TYPE_1__ dev; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* set_alarm ) (int ,struct rtc_wkalrm*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtc_valid_tm (int *) ;
 int stub1 (int ,struct rtc_wkalrm*) ;

int rtc_set_alarm(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
 int err;

 err = rtc_valid_tm(&alarm->time);
 if (err != 0)
  return err;

 err = mutex_lock_interruptible(&rtc->ops_lock);
 if (err)
  return err;

 if (!rtc->ops)
  err = -ENODEV;
 else if (!rtc->ops->set_alarm)
  err = -EINVAL;
 else
  err = rtc->ops->set_alarm(rtc->dev.parent, alarm);

 mutex_unlock(&rtc->ops_lock);
 return err;
}
