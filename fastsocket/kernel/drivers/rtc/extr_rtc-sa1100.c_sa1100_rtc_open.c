
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IRQF_DISABLED ;
 int IRQ_OST1 ;
 int IRQ_RTC1Hz ;
 int IRQ_RTCAlrm ;
 int dev_err (struct device*,char*,int ) ;
 int free_irq (int ,struct device*) ;
 int request_irq (int ,int ,int ,char*,struct device*) ;
 int sa1100_rtc_interrupt ;
 int timer1_interrupt ;

__attribute__((used)) static int sa1100_rtc_open(struct device *dev)
{
 int ret;

 ret = request_irq(IRQ_RTC1Hz, sa1100_rtc_interrupt, IRQF_DISABLED,
    "rtc 1Hz", dev);
 if (ret) {
  dev_err(dev, "IRQ %d already in use.\n", IRQ_RTC1Hz);
  goto fail_ui;
 }
 ret = request_irq(IRQ_RTCAlrm, sa1100_rtc_interrupt, IRQF_DISABLED,
    "rtc Alrm", dev);
 if (ret) {
  dev_err(dev, "IRQ %d already in use.\n", IRQ_RTCAlrm);
  goto fail_ai;
 }
 ret = request_irq(IRQ_OST1, timer1_interrupt, IRQF_DISABLED,
    "rtc timer", dev);
 if (ret) {
  dev_err(dev, "IRQ %d already in use.\n", IRQ_OST1);
  goto fail_pi;
 }
 return 0;

 fail_pi:
 free_irq(IRQ_RTCAlrm, dev);
 fail_ai:
 free_irq(IRQ_RTC1Hz, dev);
 fail_ui:
 return ret;
}
