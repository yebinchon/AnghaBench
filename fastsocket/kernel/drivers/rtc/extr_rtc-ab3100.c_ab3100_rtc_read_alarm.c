
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct rtc_wkalrm {int enabled; int time; scalar_t__ pending; } ;
struct device {int dummy; } ;
struct ab3100 {int dummy; } ;


 int AB3100_AL0 ;
 int AB3100_RTC ;
 int AB3100_RTC_CLOCK_RATE ;
 int ab3100_get_register_interruptible (struct ab3100*,int ,int*) ;
 int ab3100_get_register_page_interruptible (struct ab3100*,int ,int*,int) ;
 struct ab3100* dev_get_drvdata (struct device*) ;
 int rtc_time_to_tm (unsigned long,int *) ;
 int rtc_valid_tm (int *) ;

__attribute__((used)) static int ab3100_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct ab3100 *ab3100_data = dev_get_drvdata(dev);
 unsigned long time;
 u64 fat_time;
 u8 buf[6];
 u8 rtcval;
 int err;


 err = ab3100_get_register_interruptible(ab3100_data,
      AB3100_RTC, &rtcval);
 if (err)
  return err;
 if (rtcval & 0x04)
  alarm->enabled = 1;
 else
  alarm->enabled = 0;

 alarm->pending = 0;

 err = ab3100_get_register_page_interruptible(ab3100_data,
           AB3100_AL0, buf, 4);
 if (err)
  return err;
 fat_time = ((u64) buf[3] << 40) | ((u64) buf[2] << 32) |
  ((u64) buf[1] << 24) | ((u64) buf[0] << 16);
 time = (unsigned long) (fat_time / (u64) (AB3100_RTC_CLOCK_RATE * 2));

 rtc_time_to_tm(time, &alarm->time);

 return rtc_valid_tm(&alarm->time);
}
