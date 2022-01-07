
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {scalar_t__ nr; int irq; } ;


 int ARRAY_SIZE (int ) ;
 int GAFR ;
 int GPDR ;
 int SHANNON_GPIO_EJECT_0 ;
 int SHANNON_GPIO_EJECT_1 ;
 int SHANNON_GPIO_RDY_0 ;
 int SHANNON_GPIO_RDY_1 ;
 int SHANNON_IRQ_GPIO_RDY_0 ;
 int SHANNON_IRQ_GPIO_RDY_1 ;
 int irqs ;
 int soc_pcmcia_request_irqs (struct soc_pcmcia_socket*,int ,int ) ;

__attribute__((used)) static int shannon_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{

 GPDR &= ~(SHANNON_GPIO_EJECT_0 | SHANNON_GPIO_EJECT_1 |
    SHANNON_GPIO_RDY_0 | SHANNON_GPIO_RDY_1);
 GAFR &= ~(SHANNON_GPIO_EJECT_0 | SHANNON_GPIO_EJECT_1 |
    SHANNON_GPIO_RDY_0 | SHANNON_GPIO_RDY_1);

 skt->irq = skt->nr ? SHANNON_IRQ_GPIO_RDY_1 : SHANNON_IRQ_GPIO_RDY_0;

 return soc_pcmcia_request_irqs(skt, irqs, ARRAY_SIZE(irqs));
}
