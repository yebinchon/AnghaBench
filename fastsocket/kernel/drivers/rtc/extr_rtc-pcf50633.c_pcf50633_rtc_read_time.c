
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_year; int tm_mon; int tm_mday; } ;
struct pcf50633_time {int * time; } ;
struct pcf50633_rtc {int pcf; } ;
struct device {int dummy; } ;


 int EIO ;
 int PCF50633_REG_RTCSC ;
 size_t PCF50633_TI_DAY ;
 int PCF50633_TI_EXTENT ;
 size_t PCF50633_TI_HOUR ;
 size_t PCF50633_TI_MIN ;
 size_t PCF50633_TI_MONTH ;
 size_t PCF50633_TI_SEC ;
 size_t PCF50633_TI_YEAR ;
 int dev_dbg (struct device*,char*,int ,int ,int ,int ,int ,int ) ;
 int dev_err (struct device*,char*) ;
 struct pcf50633_rtc* dev_get_drvdata (struct device*) ;
 int pcf2rtc_time (struct rtc_time*,struct pcf50633_time*) ;
 int pcf50633_read_block (int ,int ,int,int *) ;
 int rtc_valid_tm (struct rtc_time*) ;

__attribute__((used)) static int pcf50633_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct pcf50633_rtc *rtc;
 struct pcf50633_time pcf_tm;
 int ret;

 rtc = dev_get_drvdata(dev);

 ret = pcf50633_read_block(rtc->pcf, PCF50633_REG_RTCSC,
         PCF50633_TI_EXTENT,
         &pcf_tm.time[0]);
 if (ret != PCF50633_TI_EXTENT) {
  dev_err(dev, "Failed to read time\n");
  return -EIO;
 }

 dev_dbg(dev, "PCF_TIME: %02x.%02x.%02x %02x:%02x:%02x\n",
  pcf_tm.time[PCF50633_TI_DAY],
  pcf_tm.time[PCF50633_TI_MONTH],
  pcf_tm.time[PCF50633_TI_YEAR],
  pcf_tm.time[PCF50633_TI_HOUR],
  pcf_tm.time[PCF50633_TI_MIN],
  pcf_tm.time[PCF50633_TI_SEC]);

 pcf2rtc_time(tm, &pcf_tm);

 dev_dbg(dev, "RTC_TIME: %u.%u.%u %u:%u:%u\n",
  tm->tm_mday, tm->tm_mon, tm->tm_year,
  tm->tm_hour, tm->tm_min, tm->tm_sec);

 return rtc_valid_tm(tm);
}
