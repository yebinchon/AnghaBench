
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_time {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct rtc_device {int ops_lock; TYPE_1__ dev; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* read_time ) (int ,struct rtc_time*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int memset (struct rtc_time*,int ,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,struct rtc_time*) ;

int rtc_read_time(struct rtc_device *rtc, struct rtc_time *tm)
{
 int err;

 err = mutex_lock_interruptible(&rtc->ops_lock);
 if (err)
  return err;

 if (!rtc->ops)
  err = -ENODEV;
 else if (!rtc->ops->read_time)
  err = -EINVAL;
 else {
  memset(tm, 0, sizeof(struct rtc_time));
  err = rtc->ops->read_time(rtc->dev.parent, tm);
 }

 mutex_unlock(&rtc->ops_lock);
 return err;
}
