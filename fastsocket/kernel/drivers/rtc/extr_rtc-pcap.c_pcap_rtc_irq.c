
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_rtc {int rtc; int pcap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PCAP_IRQ_1HZ ;
 int PCAP_IRQ_TODA ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_UF ;
 int pcap_to_irq (int ,int ) ;
 int rtc_update_irq (int ,int,unsigned long) ;

__attribute__((used)) static irqreturn_t pcap_rtc_irq(int irq, void *_pcap_rtc)
{
 struct pcap_rtc *pcap_rtc = _pcap_rtc;
 unsigned long rtc_events;

 if (irq == pcap_to_irq(pcap_rtc->pcap, PCAP_IRQ_1HZ))
  rtc_events = RTC_IRQF | RTC_UF;
 else if (irq == pcap_to_irq(pcap_rtc->pcap, PCAP_IRQ_TODA))
  rtc_events = RTC_IRQF | RTC_AF;
 else
  rtc_events = 0;

 rtc_update_irq(pcap_rtc->rtc, 1, rtc_events);
 return IRQ_HANDLED;
}
