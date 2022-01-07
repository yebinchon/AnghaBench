
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; int rtc; int irq_1msec; int irq_alarm; } ;
struct platform_device {int dev; } ;


 int BM_RTC_CTRL_ALARM_IRQ_EN ;
 int BM_RTC_CTRL_ONEMSEC_IRQ_EN ;
 scalar_t__ HW_RTC_CTRL ;
 int free_irq (int ,int *) ;
 int iounmap (scalar_t__) ;
 int kfree (struct stmp3xxx_rtc_data*) ;
 struct stmp3xxx_rtc_data* platform_get_drvdata (struct platform_device*) ;
 int rtc_device_unregister (int ) ;
 int stmp3xxx_clearl (int,scalar_t__) ;

__attribute__((used)) static int stmp3xxx_rtc_remove(struct platform_device *pdev)
{
 struct stmp3xxx_rtc_data *rtc_data = platform_get_drvdata(pdev);

 if (!rtc_data)
  return 0;

 stmp3xxx_clearl(BM_RTC_CTRL_ONEMSEC_IRQ_EN | BM_RTC_CTRL_ALARM_IRQ_EN,
   rtc_data->io + HW_RTC_CTRL);
 free_irq(rtc_data->irq_alarm, &pdev->dev);
 free_irq(rtc_data->irq_1msec, &pdev->dev);
 rtc_device_unregister(rtc_data->rtc);
 iounmap(rtc_data->io);
 kfree(rtc_data);

 return 0;
}
