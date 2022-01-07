
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int EINVAL ;
 int RTCL1HREG ;
 int RTCL1LREG ;
 int RTC_FREQUENCY ;
 int do_div (int,int) ;
 int is_power_of_2 (int) ;
 int periodic_count ;
 int rtc1_write (int ,int) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int vr41xx_rtc_irq_set_freq(struct device *dev, int freq)
{
 u64 count;

 if (!is_power_of_2(freq))
  return -EINVAL;
 count = RTC_FREQUENCY;
 do_div(count, freq);

 spin_lock_irq(&rtc_lock);

 periodic_count = count;
 rtc1_write(RTCL1LREG, periodic_count);
 rtc1_write(RTCL1HREG, periodic_count >> 16);

 spin_unlock_irq(&rtc_lock);

 return 0;
}
