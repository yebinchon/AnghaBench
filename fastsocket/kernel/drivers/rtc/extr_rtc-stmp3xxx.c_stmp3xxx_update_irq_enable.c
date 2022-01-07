
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; } ;
struct device {int dummy; } ;


 int BM_RTC_CTRL_ONEMSEC_IRQ_EN ;
 scalar_t__ HW_RTC_CTRL ;
 struct stmp3xxx_rtc_data* dev_get_drvdata (struct device*) ;
 int stmp3xxx_clearl (int ,scalar_t__) ;
 int stmp3xxx_setl (int ,scalar_t__) ;

__attribute__((used)) static int stmp3xxx_update_irq_enable(struct device *dev, unsigned int enabled)
{
 struct stmp3xxx_rtc_data *rtc_data = dev_get_drvdata(dev);

 if (enabled)
  stmp3xxx_setl(BM_RTC_CTRL_ONEMSEC_IRQ_EN,
    rtc_data->io + HW_RTC_CTRL);
 else
  stmp3xxx_clearl(BM_RTC_CTRL_ONEMSEC_IRQ_EN,
    rtc_data->io + HW_RTC_CTRL);
 return 0;
}
