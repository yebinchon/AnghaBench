
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_chip {int msr; int msr_work; int workqueue; } ;


 struct pcap_chip* get_irq_chip_data (unsigned int) ;
 int irq_to_pcap (struct pcap_chip*,unsigned int) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void pcap_unmask_irq(unsigned int irq)
{
 struct pcap_chip *pcap = get_irq_chip_data(irq);

 pcap->msr &= ~(1 << irq_to_pcap(pcap, irq));
 queue_work(pcap->workqueue, &pcap->msr_work);
}
