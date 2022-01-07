
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bfin_rtc {int dummy; } ;


 int ENOIOCTLCMD ;


 int RTC_ISTAT_ALARM ;
 int RTC_ISTAT_ALARM_DAY ;
 int RTC_ISTAT_SEC ;


 int bfin_rtc_int_clear (int) ;
 int bfin_rtc_int_set (int) ;
 int bfin_rtc_int_set_alarm (struct bfin_rtc*) ;
 int bfin_rtc_sync_pending (struct device*) ;
 int dev_dbg_stamp (struct device*) ;
 struct bfin_rtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int bfin_rtc_ioctl(struct device *dev, unsigned int cmd, unsigned long arg)
{
 struct bfin_rtc *rtc = dev_get_drvdata(dev);
 int ret = 0;

 dev_dbg_stamp(dev);

 bfin_rtc_sync_pending(dev);

 switch (cmd) {
 case 128:
  dev_dbg_stamp(dev);
  bfin_rtc_int_set(RTC_ISTAT_SEC);
  break;
 case 129:
  dev_dbg_stamp(dev);
  bfin_rtc_int_clear(~RTC_ISTAT_SEC);
  break;

 case 130:
  dev_dbg_stamp(dev);
  bfin_rtc_int_set_alarm(rtc);
  break;
 case 131:
  dev_dbg_stamp(dev);
  bfin_rtc_int_clear(~(RTC_ISTAT_ALARM | RTC_ISTAT_ALARM_DAY));
  break;

 default:
  dev_dbg_stamp(dev);
  ret = -ENOIOCTLCMD;
 }

 return ret;
}
