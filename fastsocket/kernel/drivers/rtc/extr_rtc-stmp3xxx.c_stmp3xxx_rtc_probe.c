
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; int rtc; void* irq_alarm; void* irq_1msec; scalar_t__ irq_count; } ;
struct resource {int start; } ;
struct platform_device {int dev; int name; } ;


 int BM_RTC_CTRL_ALARM_IRQ_EN ;
 int BM_RTC_CTRL_ONEMSEC_IRQ_EN ;
 int BM_RTC_PERSISTENT0_ALARM_EN ;
 int BM_RTC_PERSISTENT0_ALARM_WAKE ;
 int BM_RTC_PERSISTENT0_ALARM_WAKE_EN ;
 int BM_RTC_STAT_RTC_PRESENT ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ HW_RTC_CTRL ;
 scalar_t__ HW_RTC_PERSISTENT0 ;
 scalar_t__ HW_RTC_STAT ;
 int IORESOURCE_MEM ;
 int IRQF_DISABLED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int __raw_readl (scalar_t__) ;
 int dev_err (int *,char*,...) ;
 int free_irq (void*,int *) ;
 scalar_t__ ioremap (int ,int ) ;
 int iounmap (scalar_t__) ;
 int kfree (struct stmp3xxx_rtc_data*) ;
 struct stmp3xxx_rtc_data* kzalloc (int,int ) ;
 void* platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct stmp3xxx_rtc_data*) ;
 int request_irq (void*,int ,int ,char*,int *) ;
 int resource_size (struct resource*) ;
 int rtc_device_register (int ,int *,int *,int ) ;
 int rtc_device_unregister (int ) ;
 int stmp3xxx_clearl (int,scalar_t__) ;
 int stmp3xxx_reset_block (scalar_t__,int) ;
 int stmp3xxx_rtc_interrupt ;
 int stmp3xxx_rtc_ops ;

__attribute__((used)) static int stmp3xxx_rtc_probe(struct platform_device *pdev)
{
 struct stmp3xxx_rtc_data *rtc_data;
 struct resource *r;
 int err;

 rtc_data = kzalloc(sizeof *rtc_data, GFP_KERNEL);
 if (!rtc_data)
  return -ENOMEM;

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!r) {
  dev_err(&pdev->dev, "failed to get resource\n");
  err = -ENXIO;
  goto out_free;
 }

 rtc_data->io = ioremap(r->start, resource_size(r));
 if (!rtc_data->io) {
  dev_err(&pdev->dev, "ioremap failed\n");
  err = -EIO;
  goto out_free;
 }

 rtc_data->irq_alarm = platform_get_irq(pdev, 0);
 rtc_data->irq_1msec = platform_get_irq(pdev, 1);

 if (!(__raw_readl(HW_RTC_STAT + rtc_data->io) &
   BM_RTC_STAT_RTC_PRESENT)) {
  dev_err(&pdev->dev, "no device onboard\n");
  err = -ENODEV;
  goto out_remap;
 }

 stmp3xxx_reset_block(rtc_data->io, 1);
 stmp3xxx_clearl(BM_RTC_PERSISTENT0_ALARM_EN |
   BM_RTC_PERSISTENT0_ALARM_WAKE_EN |
   BM_RTC_PERSISTENT0_ALARM_WAKE,
   rtc_data->io + HW_RTC_PERSISTENT0);
 rtc_data->rtc = rtc_device_register(pdev->name, &pdev->dev,
    &stmp3xxx_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc_data->rtc)) {
  err = PTR_ERR(rtc_data->rtc);
  goto out_remap;
 }

 rtc_data->irq_count = 0;
 err = request_irq(rtc_data->irq_alarm, stmp3xxx_rtc_interrupt,
   IRQF_DISABLED, "RTC alarm", &pdev->dev);
 if (err) {
  dev_err(&pdev->dev, "Cannot claim IRQ%d\n",
   rtc_data->irq_alarm);
  goto out_irq_alarm;
 }
 err = request_irq(rtc_data->irq_1msec, stmp3xxx_rtc_interrupt,
   IRQF_DISABLED, "RTC tick", &pdev->dev);
 if (err) {
  dev_err(&pdev->dev, "Cannot claim IRQ%d\n",
   rtc_data->irq_1msec);
  goto out_irq1;
 }

 platform_set_drvdata(pdev, rtc_data);

 return 0;

out_irq1:
 free_irq(rtc_data->irq_alarm, &pdev->dev);
out_irq_alarm:
 stmp3xxx_clearl(BM_RTC_CTRL_ONEMSEC_IRQ_EN | BM_RTC_CTRL_ALARM_IRQ_EN,
   rtc_data->io + HW_RTC_CTRL);
 rtc_device_unregister(rtc_data->rtc);
out_remap:
 iounmap(rtc_data->io);
out_free:
 kfree(rtc_data);
 return err;
}
