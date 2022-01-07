
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;
struct ab3100 {int dummy; } ;


 int AB3100_AL0 ;
 int AB3100_AL1 ;
 int AB3100_AL2 ;
 int AB3100_AL3 ;
 int AB3100_RTC ;
 int AB3100_RTC_CLOCK_RATE ;
 int ab3100_mask_and_set_register_interruptible (struct ab3100*,int ,int,int) ;
 int ab3100_set_register_interruptible (struct ab3100*,int ,unsigned char) ;
 struct ab3100* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time (int *,unsigned long*) ;

__attribute__((used)) static int ab3100_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct ab3100 *ab3100_data = dev_get_drvdata(dev);
 u8 regs[] = {AB3100_AL0, AB3100_AL1, AB3100_AL2, AB3100_AL3};
 unsigned char buf[4];
 unsigned long secs;
 u64 fat_time;
 int err;
 int i;

 rtc_tm_to_time(&alarm->time, &secs);
 fat_time = (u64) secs * AB3100_RTC_CLOCK_RATE * 2;
 buf[0] = (fat_time >> 16) & 0xFF;
 buf[1] = (fat_time >> 24) & 0xFF;
 buf[2] = (fat_time >> 32) & 0xFF;
 buf[3] = (fat_time >> 40) & 0xFF;


 for (i = 0; i < 4; i++) {
  err = ab3100_set_register_interruptible(ab3100_data,
       regs[i], buf[i]);
  if (err)
   return err;
 }

 return ab3100_mask_and_set_register_interruptible(ab3100_data,
         AB3100_RTC, ~(1 << 2),
         alarm->enabled << 2);
}
