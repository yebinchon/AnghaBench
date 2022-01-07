
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct sam9_rtc {int dummy; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; scalar_t__ tm_year; } ;
struct device {int dummy; } ;


 unsigned long ALARM_DISABLED ;
 int AR ;
 unsigned long AT91_RTT_ALMIEN ;
 unsigned long AT91_RTT_RTTINCIEN ;
 unsigned long AT91_RTT_RTTRST ;
 int MR ;
 int dev_dbg (struct device*,char*,char*,scalar_t__,int ,int ,int ,int ,int ) ;
 struct sam9_rtc* dev_get_drvdata (struct device*) ;
 unsigned long gpbr_readl (struct sam9_rtc*) ;
 int gpbr_writel (struct sam9_rtc*,unsigned long) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 unsigned long rtt_readl (struct sam9_rtc*,int ) ;
 int rtt_writel (struct sam9_rtc*,int ,unsigned long) ;

__attribute__((used)) static int at91_rtc_settime(struct device *dev, struct rtc_time *tm)
{
 struct sam9_rtc *rtc = dev_get_drvdata(dev);
 int err;
 u32 offset, alarm, mr;
 unsigned long secs;

 dev_dbg(dev, "%s: %4d-%02d-%02d %02d:%02d:%02d\n", "settime",
  1900 + tm->tm_year, tm->tm_mon, tm->tm_mday,
  tm->tm_hour, tm->tm_min, tm->tm_sec);

 err = rtc_tm_to_time(tm, &secs);
 if (err != 0)
  return err;

 mr = rtt_readl(rtc, MR);


 rtt_writel(rtc, MR, mr & ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN));


 offset = gpbr_readl(rtc);


 secs += 1;
 gpbr_writel(rtc, secs);


 alarm = rtt_readl(rtc, AR);
 if (alarm != ALARM_DISABLED) {
  if (offset > secs) {

   alarm += (offset - secs);
  } else if ((alarm + offset) > secs) {

   alarm -= (secs - offset);
  } else {

   alarm = ALARM_DISABLED;
   mr &= ~AT91_RTT_ALMIEN;
  }
  rtt_writel(rtc, AR, alarm);
 }


 rtt_writel(rtc, MR, mr | AT91_RTT_RTTRST);

 return 0;
}
