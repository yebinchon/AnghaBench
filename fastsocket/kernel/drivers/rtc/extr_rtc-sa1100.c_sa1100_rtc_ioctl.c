
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EINVAL ;
 int ENOIOCTLCMD ;
 int OIER ;
 int OIER_E1 ;
 unsigned long OSCR ;
 unsigned long OSMR1 ;
 int RTSR ;
 int RTSR_ALE ;
 int RTSR_HZE ;
 int put_user (unsigned long,unsigned long*) ;
 unsigned long rtc_freq ;
 int rtc_timer1_count ;
 int sa1100_rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 unsigned long timer_freq ;

__attribute__((used)) static int sa1100_rtc_ioctl(struct device *dev, unsigned int cmd,
  unsigned long arg)
{
 switch(cmd) {
 case 135:
  spin_lock_irq(&sa1100_rtc_lock);
  RTSR &= ~RTSR_ALE;
  spin_unlock_irq(&sa1100_rtc_lock);
  return 0;
 case 134:
  spin_lock_irq(&sa1100_rtc_lock);
  RTSR |= RTSR_ALE;
  spin_unlock_irq(&sa1100_rtc_lock);
  return 0;
 case 129:
  spin_lock_irq(&sa1100_rtc_lock);
  RTSR &= ~RTSR_HZE;
  spin_unlock_irq(&sa1100_rtc_lock);
  return 0;
 case 128:
  spin_lock_irq(&sa1100_rtc_lock);
  RTSR |= RTSR_HZE;
  spin_unlock_irq(&sa1100_rtc_lock);
  return 0;
 case 131:
  spin_lock_irq(&sa1100_rtc_lock);
  OIER &= ~OIER_E1;
  spin_unlock_irq(&sa1100_rtc_lock);
  return 0;
 case 130:
  spin_lock_irq(&sa1100_rtc_lock);
  OSMR1 = timer_freq / rtc_freq + OSCR;
  OIER |= OIER_E1;
  rtc_timer1_count = 1;
  spin_unlock_irq(&sa1100_rtc_lock);
  return 0;
 case 133:
  return put_user(rtc_freq, (unsigned long *)arg);
 case 132:
  if (arg < 1 || arg > timer_freq)
   return -EINVAL;
  rtc_freq = arg;
  return 0;
 }
 return -ENOIOCTLCMD;
}
