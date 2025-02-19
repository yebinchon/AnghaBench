
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_rtc {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int MAXFREQ_PERIODIC ;
 int PIAR ;
 struct pxa_rtc* dev_get_drvdata (struct device*) ;
 int rtc_writel (struct pxa_rtc*,int ,int) ;

__attribute__((used)) static int pxa_periodic_irq_set_freq(struct device *dev, int freq)
{
 struct pxa_rtc *pxa_rtc = dev_get_drvdata(dev);
 int period_ms;

 if (freq < 1 || freq > MAXFREQ_PERIODIC)
  return -EINVAL;

 period_ms = 1000 / freq;
 rtc_writel(pxa_rtc, PIAR, period_ms);

 return 0;
}
