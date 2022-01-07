
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int PCAP_IRQ_TODA ;
 int pcap_rtc_irq_enable (struct device*,int ,unsigned int) ;

__attribute__((used)) static int pcap_rtc_alarm_irq_enable(struct device *dev, unsigned int en)
{
 return pcap_rtc_irq_enable(dev, PCAP_IRQ_TODA, en);
}
