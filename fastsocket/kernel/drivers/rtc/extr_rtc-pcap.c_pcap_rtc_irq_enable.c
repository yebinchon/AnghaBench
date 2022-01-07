
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pcap_rtc {int pcap; } ;
struct device {int dummy; } ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int pcap_to_irq (int ,int) ;
 struct pcap_rtc* platform_get_drvdata (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int pcap_rtc_irq_enable(struct device *dev, int pirq, unsigned int en)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct pcap_rtc *pcap_rtc = platform_get_drvdata(pdev);

 if (en)
  enable_irq(pcap_to_irq(pcap_rtc->pcap, pirq));
 else
  disable_irq(pcap_to_irq(pcap_rtc->pcap, pirq));

 return 0;
}
