
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_year; int tm_mon; int tm_mday; } ;
struct pcf50633_time {int * time; } ;
struct pcf50633_rtc {int pcf; } ;
struct device {int dummy; } ;


 int PCF50633_IRQ_ALARM ;
 int PCF50633_IRQ_SECOND ;
 int PCF50633_REG_RTCSC ;
 size_t PCF50633_TI_DAY ;
 int PCF50633_TI_EXTENT ;
 size_t PCF50633_TI_HOUR ;
 size_t PCF50633_TI_MIN ;
 size_t PCF50633_TI_MONTH ;
 size_t PCF50633_TI_SEC ;
 size_t PCF50633_TI_YEAR ;
 int dev_dbg (struct device*,char*,int ,int ,int ,int ,int ,int ) ;
 struct pcf50633_rtc* dev_get_drvdata (struct device*) ;
 int pcf50633_irq_mask (int ,int ) ;
 int pcf50633_irq_mask_get (int ,int ) ;
 int pcf50633_irq_unmask (int ,int ) ;
 int pcf50633_write_block (int ,int ,int ,int *) ;
 int rtc2pcf_time (struct pcf50633_time*,struct rtc_time*) ;

__attribute__((used)) static int pcf50633_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct pcf50633_rtc *rtc;
 struct pcf50633_time pcf_tm;
 int second_masked, alarm_masked, ret = 0;

 rtc = dev_get_drvdata(dev);

 dev_dbg(dev, "RTC_TIME: %u.%u.%u %u:%u:%u\n",
  tm->tm_mday, tm->tm_mon, tm->tm_year,
  tm->tm_hour, tm->tm_min, tm->tm_sec);

 rtc2pcf_time(&pcf_tm, tm);

 dev_dbg(dev, "PCF_TIME: %02x.%02x.%02x %02x:%02x:%02x\n",
  pcf_tm.time[PCF50633_TI_DAY],
  pcf_tm.time[PCF50633_TI_MONTH],
  pcf_tm.time[PCF50633_TI_YEAR],
  pcf_tm.time[PCF50633_TI_HOUR],
  pcf_tm.time[PCF50633_TI_MIN],
  pcf_tm.time[PCF50633_TI_SEC]);


 second_masked = pcf50633_irq_mask_get(rtc->pcf, PCF50633_IRQ_SECOND);
 alarm_masked = pcf50633_irq_mask_get(rtc->pcf, PCF50633_IRQ_ALARM);

 if (!second_masked)
  pcf50633_irq_mask(rtc->pcf, PCF50633_IRQ_SECOND);
 if (!alarm_masked)
  pcf50633_irq_mask(rtc->pcf, PCF50633_IRQ_ALARM);


 ret = pcf50633_write_block(rtc->pcf, PCF50633_REG_RTCSC,
          PCF50633_TI_EXTENT,
          &pcf_tm.time[0]);

 if (!second_masked)
  pcf50633_irq_unmask(rtc->pcf, PCF50633_IRQ_SECOND);
 if (!alarm_masked)
  pcf50633_irq_unmask(rtc->pcf, PCF50633_IRQ_ALARM);

 return ret;
}
