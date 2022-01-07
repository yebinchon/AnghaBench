
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {size_t nr; int irq; } ;


 int GPIO_E740_PCMCIA_RDY0 ;
 int GPIO_E740_PCMCIA_RDY1 ;
 int IRQ_GPIO (int ) ;
 int * cd_irqs ;
 int soc_pcmcia_request_irqs (struct soc_pcmcia_socket*,int *,int) ;

__attribute__((used)) static int e740_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 skt->irq = skt->nr == 0 ? IRQ_GPIO(GPIO_E740_PCMCIA_RDY0) :
    IRQ_GPIO(GPIO_E740_PCMCIA_RDY1);

 return soc_pcmcia_request_irqs(skt, &cd_irqs[skt->nr], 1);
}
