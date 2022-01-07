
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {scalar_t__ nr; int irq; } ;


 int ARRAY_SIZE (int ) ;
 int MAINSTONE_S0_IRQ ;
 int MAINSTONE_S1_IRQ ;
 int irqs ;
 int soc_pcmcia_request_irqs (struct soc_pcmcia_socket*,int ,int ) ;

__attribute__((used)) static int mst_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{





 skt->irq = (skt->nr == 0) ? MAINSTONE_S0_IRQ : MAINSTONE_S1_IRQ;
 return soc_pcmcia_request_irqs(skt, irqs, ARRAY_SIZE(irqs));
}
