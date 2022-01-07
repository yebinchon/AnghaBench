
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {scalar_t__ nr; } ;
struct pcmcia_irqs {scalar_t__ sock; int irq; } ;


 int IRQ_TYPE_NONE ;
 int set_irq_type (int ,int ) ;

void soc_pcmcia_disable_irqs(struct soc_pcmcia_socket *skt,
        struct pcmcia_irqs *irqs, int nr)
{
 int i;

 for (i = 0; i < nr; i++)
  if (irqs[i].sock == skt->nr)
   set_irq_type(irqs[i].irq, IRQ_TYPE_NONE);
}
