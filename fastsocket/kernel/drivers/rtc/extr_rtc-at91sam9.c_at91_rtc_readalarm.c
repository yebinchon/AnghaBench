
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sam9_rtc {int dummy; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; scalar_t__ tm_year; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;
typedef int alrm ;


 scalar_t__ ALARM_DISABLED ;
 int AR ;
 int AT91_RTT_ALMIEN ;
 int EILSEQ ;
 int MR ;
 int dev_dbg (struct device*,char*,char*,scalar_t__,int ,int ,int ,int ,int ) ;
 struct sam9_rtc* dev_get_drvdata (struct device*) ;
 scalar_t__ gpbr_readl (struct sam9_rtc*) ;
 int memset (struct rtc_wkalrm*,int ,int) ;
 int rtc_time_to_tm (scalar_t__,struct rtc_time*) ;
 int rtt_readl (struct sam9_rtc*,int ) ;

__attribute__((used)) static int at91_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct sam9_rtc *rtc = dev_get_drvdata(dev);
 struct rtc_time *tm = &alrm->time;
 u32 alarm = rtt_readl(rtc, AR);
 u32 offset;

 offset = gpbr_readl(rtc);
 if (offset == 0)
  return -EILSEQ;

 memset(alrm, 0, sizeof(alrm));
 if (alarm != ALARM_DISABLED && offset != 0) {
  rtc_time_to_tm(offset + alarm, tm);

  dev_dbg(dev, "%s: %4d-%02d-%02d %02d:%02d:%02d\n", "readalarm",
   1900 + tm->tm_year, tm->tm_mon, tm->tm_mday,
   tm->tm_hour, tm->tm_min, tm->tm_sec);

  if (rtt_readl(rtc, MR) & AT91_RTT_ALMIEN)
   alrm->enabled = 1;
 }

 return 0;
}
