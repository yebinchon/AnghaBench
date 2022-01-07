
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_chip {int irq_base; } ;



int pcap_to_irq(struct pcap_chip *pcap, int irq)
{
 return pcap->irq_base + irq;
}
