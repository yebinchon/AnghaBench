
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct rtc_device {int ops_lock; TYPE_2__ dev; TYPE_1__* ops; scalar_t__ uie_irq_active; } ;
struct TYPE_3__ {int (* update_irq_enable ) (int ,unsigned int) ;} ;


 int EINVAL ;
 int ENODEV ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtc_dev_update_irq_enable_emul (struct rtc_device*,unsigned int) ;
 int stub1 (int ,unsigned int) ;

int rtc_update_irq_enable(struct rtc_device *rtc, unsigned int enabled)
{
 int err = mutex_lock_interruptible(&rtc->ops_lock);
 if (err)
  return err;
 if (!rtc->ops)
  err = -ENODEV;
 else if (!rtc->ops->update_irq_enable)
  err = -EINVAL;
 else
  err = rtc->ops->update_irq_enable(rtc->dev.parent, enabled);

 mutex_unlock(&rtc->ops_lock);
 return err;
}
