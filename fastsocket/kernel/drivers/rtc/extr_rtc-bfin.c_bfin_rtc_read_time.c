
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct bfin_rtc {int rtc_wrote_regs; } ;


 int bfin_read_RTC_STAT () ;
 int bfin_rtc_sync_pending (struct device*) ;
 int dev_dbg_stamp (struct device*) ;
 struct bfin_rtc* dev_get_drvdata (struct device*) ;
 int rtc_bfin_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static int bfin_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct bfin_rtc *rtc = dev_get_drvdata(dev);

 dev_dbg_stamp(dev);

 if (rtc->rtc_wrote_regs & 0x1)
  bfin_rtc_sync_pending(dev);

 rtc_bfin_to_tm(bfin_read_RTC_STAT(), tm);

 return 0;
}
