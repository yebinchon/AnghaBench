
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {scalar_t__ irq; scalar_t__ nr; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IRQ_S0_READY_NINT ;
 scalar_t__ IRQ_S1_READY_NINT ;
 scalar_t__ NO_IRQ ;
 int irqs ;
 int soc_pcmcia_request_irqs (struct soc_pcmcia_socket*,int ,int ) ;

int sa1111_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 if (skt->irq == NO_IRQ)
  skt->irq = skt->nr ? IRQ_S1_READY_NINT : IRQ_S0_READY_NINT;

 return soc_pcmcia_request_irqs(skt, irqs, ARRAY_SIZE(irqs));
}
