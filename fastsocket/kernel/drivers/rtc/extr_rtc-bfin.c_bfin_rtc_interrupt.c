
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct device {int dummy; } ;
struct bfin_rtc {int rtc_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 int RTC_ISTAT_ALARM ;
 int RTC_ISTAT_ALARM_DAY ;
 int RTC_ISTAT_SEC ;
 int RTC_ISTAT_WRITE_COMPLETE ;
 unsigned long RTC_UF ;
 int bfin_read_RTC_ICTL () ;
 int bfin_read_RTC_ISTAT () ;
 int bfin_write_RTC_ISTAT (int) ;
 int bfin_write_complete ;
 int complete (int *) ;
 int dev_dbg_stamp (struct device*) ;
 struct bfin_rtc* dev_get_drvdata (struct device*) ;
 int rtc_update_irq (int ,int,unsigned long) ;

__attribute__((used)) static irqreturn_t bfin_rtc_interrupt(int irq, void *dev_id)
{
 struct device *dev = dev_id;
 struct bfin_rtc *rtc = dev_get_drvdata(dev);
 unsigned long events = 0;
 bool write_complete = 0;
 u16 rtc_istat, rtc_ictl;

 dev_dbg_stamp(dev);

 rtc_istat = bfin_read_RTC_ISTAT();
 rtc_ictl = bfin_read_RTC_ICTL();

 if (rtc_istat & RTC_ISTAT_WRITE_COMPLETE) {
  bfin_write_RTC_ISTAT(RTC_ISTAT_WRITE_COMPLETE);
  write_complete = 1;
  complete(&bfin_write_complete);
 }

 if (rtc_ictl & (RTC_ISTAT_ALARM | RTC_ISTAT_ALARM_DAY)) {
  if (rtc_istat & (RTC_ISTAT_ALARM | RTC_ISTAT_ALARM_DAY)) {
   bfin_write_RTC_ISTAT(RTC_ISTAT_ALARM | RTC_ISTAT_ALARM_DAY);
   events |= RTC_AF | RTC_IRQF;
  }
 }

 if (rtc_ictl & RTC_ISTAT_SEC) {
  if (rtc_istat & RTC_ISTAT_SEC) {
   bfin_write_RTC_ISTAT(RTC_ISTAT_SEC);
   events |= RTC_UF | RTC_IRQF;
  }
 }

 if (events)
  rtc_update_irq(rtc->rtc_dev, 1, events);

 if (write_complete || events)
  return IRQ_HANDLED;
 else
  return IRQ_NONE;
}
