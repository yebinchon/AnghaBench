
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {scalar_t__ nr; int irq; } ;


 int ARRAY_SIZE (int ) ;
 int IRQ_GPIO_H3600_PCMCIA_IRQ0 ;
 int IRQ_GPIO_H3600_PCMCIA_IRQ1 ;
 int irqs ;
 int soc_pcmcia_request_irqs (struct soc_pcmcia_socket*,int ,int ) ;

__attribute__((used)) static int h3600_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 skt->irq = skt->nr ? IRQ_GPIO_H3600_PCMCIA_IRQ1
      : IRQ_GPIO_H3600_PCMCIA_IRQ0;


 return soc_pcmcia_request_irqs(skt, irqs, ARRAY_SIZE(irqs));
}
