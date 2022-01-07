
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct device {int dummy; } ;
struct bfin_rtc {scalar_t__ rtc_wrote_regs; } ;


 int bfin_rtc_sync_pending (struct device*) ;
 int bfin_write_RTC_ALARM (int ) ;
 int bfin_write_RTC_ICTL (int ) ;
 int bfin_write_RTC_ISTAT (int) ;
 int bfin_write_RTC_PREN (int) ;
 int dev_dbg_stamp (struct device*) ;
 struct bfin_rtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void bfin_rtc_reset(struct device *dev, u16 rtc_ictl)
{
 struct bfin_rtc *rtc = dev_get_drvdata(dev);
 dev_dbg_stamp(dev);
 bfin_rtc_sync_pending(dev);
 bfin_write_RTC_PREN(0x1);
 bfin_write_RTC_ICTL(rtc_ictl);
 bfin_write_RTC_ALARM(0);
 bfin_write_RTC_ISTAT(0xFFFF);
 rtc->rtc_wrote_regs = 0;
}
