
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcap_chip {int isr_work; int workqueue; } ;
struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* ack ) (unsigned int) ;} ;


 struct pcap_chip* get_irq_data (unsigned int) ;
 int queue_work (int ,int *) ;
 int stub1 (unsigned int) ;

__attribute__((used)) static void pcap_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 struct pcap_chip *pcap = get_irq_data(irq);

 desc->chip->ack(irq);
 queue_work(pcap->workqueue, &pcap->isr_work);
 return;
}
