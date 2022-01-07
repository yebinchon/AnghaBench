
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct device {int dummy; } ;


 int RTSR ;
 int RTSR_ALE ;
 int rtc_update_alarm (int *) ;
 int sa1100_rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int sa1100_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 int ret;

 spin_lock_irq(&sa1100_rtc_lock);
 ret = rtc_update_alarm(&alrm->time);
 if (ret == 0) {
  if (alrm->enabled)
   RTSR |= RTSR_ALE;
  else
   RTSR &= ~RTSR_ALE;
 }
 spin_unlock_irq(&sa1100_rtc_lock);

 return ret;
}
