
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct device {int dummy; } ;
struct bfin_rtc {int rtc_alarm; } ;


 int EINVAL ;
 int bfin_rtc_int_set_alarm (struct bfin_rtc*) ;
 int bfin_rtc_sync_pending (struct device*) ;
 int bfin_write_RTC_ALARM (int ) ;
 int dev_dbg_stamp (struct device*) ;
 struct bfin_rtc* dev_get_drvdata (struct device*) ;
 int rtc_time_to_bfin (unsigned long) ;
 scalar_t__ rtc_tm_to_time (int *,unsigned long*) ;

__attribute__((used)) static int bfin_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct bfin_rtc *rtc = dev_get_drvdata(dev);
 unsigned long rtc_alarm;

 dev_dbg_stamp(dev);

 if (rtc_tm_to_time(&alrm->time, &rtc_alarm))
  return -EINVAL;

 rtc->rtc_alarm = alrm->time;

 bfin_rtc_sync_pending(dev);
 bfin_write_RTC_ALARM(rtc_time_to_bfin(rtc_alarm));
 if (alrm->enabled)
  bfin_rtc_int_set_alarm(rtc);

 return 0;
}
