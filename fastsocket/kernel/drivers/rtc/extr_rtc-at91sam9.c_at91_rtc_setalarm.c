
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct sam9_rtc {int dummy; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 unsigned long ALARM_DISABLED ;
 int AR ;
 unsigned long AT91_RTT_ALMIEN ;
 int EILSEQ ;
 int MR ;
 int dev_dbg (struct device*,char*,char*,int ,int ,int ,int ,int ,int ) ;
 struct sam9_rtc* dev_get_drvdata (struct device*) ;
 unsigned long gpbr_readl (struct sam9_rtc*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 unsigned long rtt_readl (struct sam9_rtc*,int ) ;
 int rtt_writel (struct sam9_rtc*,int ,unsigned long) ;

__attribute__((used)) static int at91_rtc_setalarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct sam9_rtc *rtc = dev_get_drvdata(dev);
 struct rtc_time *tm = &alrm->time;
 unsigned long secs;
 u32 offset;
 u32 mr;
 int err;

 err = rtc_tm_to_time(tm, &secs);
 if (err != 0)
  return err;

 offset = gpbr_readl(rtc);
 if (offset == 0) {

  return -EILSEQ;
 }
 mr = rtt_readl(rtc, MR);
 rtt_writel(rtc, MR, mr & ~AT91_RTT_ALMIEN);


 if (secs <= offset) {
  rtt_writel(rtc, AR, ALARM_DISABLED);
  return 0;
 }


 rtt_writel(rtc, AR, secs - offset);
 if (alrm->enabled)
  rtt_writel(rtc, MR, mr | AT91_RTT_ALMIEN);

 dev_dbg(dev, "%s: %4d-%02d-%02d %02d:%02d:%02d\n", "setalarm",
  tm->tm_year, tm->tm_mon, tm->tm_mday, tm->tm_hour,
  tm->tm_min, tm->tm_sec);

 return 0;
}
