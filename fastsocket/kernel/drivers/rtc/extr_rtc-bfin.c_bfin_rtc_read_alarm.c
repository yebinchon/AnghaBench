
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;
struct bfin_rtc {int rtc_alarm; } ;


 int RTC_ISTAT_ALARM ;
 int RTC_ISTAT_ALARM_DAY ;
 int bfin_read_RTC_ICTL () ;
 int bfin_rtc_sync_pending (struct device*) ;
 int dev_dbg_stamp (struct device*) ;
 struct bfin_rtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int bfin_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct bfin_rtc *rtc = dev_get_drvdata(dev);
 dev_dbg_stamp(dev);
 alrm->time = rtc->rtc_alarm;
 bfin_rtc_sync_pending(dev);
 alrm->enabled = !!(bfin_read_RTC_ICTL() & (RTC_ISTAT_ALARM | RTC_ISTAT_ALARM_DAY));
 return 0;
}
