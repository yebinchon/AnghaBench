
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct rtc_device {int flags; TYPE_2__ dev; TYPE_1__* ops; } ;
struct inode {int dummy; } ;
struct file {struct rtc_device* private_data; } ;
struct TYPE_3__ {int (* release ) (int ) ;} ;


 int RTC_DEV_BUSY ;
 int RTC_UIE_OFF ;
 int clear_bit_unlock (int ,int *) ;
 int rtc_dev_ioctl (struct file*,int ,int ) ;
 int rtc_irq_set_state (struct rtc_device*,int *,int ) ;
 int rtc_update_irq_enable (struct rtc_device*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int rtc_dev_release(struct inode *inode, struct file *file)
{
 struct rtc_device *rtc = file->private_data;
 rtc_dev_ioctl(file, RTC_UIE_OFF, 0);
 rtc_update_irq_enable(rtc, 0);
 rtc_irq_set_state(rtc, ((void*)0), 0);

 if (rtc->ops->release)
  rtc->ops->release(rtc->dev.parent);

 clear_bit_unlock(RTC_DEV_BUSY, &rtc->flags);
 return 0;
}
