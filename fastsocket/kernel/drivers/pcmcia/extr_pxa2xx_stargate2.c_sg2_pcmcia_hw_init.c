
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int irq; } ;


 int ARRAY_SIZE (int ) ;
 int IRQ_GPIO (int ) ;
 int SG2_S0_GPIO_READY ;
 int irqs ;
 int soc_pcmcia_request_irqs (struct soc_pcmcia_socket*,int ,int ) ;

__attribute__((used)) static int sg2_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 skt->irq = IRQ_GPIO(SG2_S0_GPIO_READY);
 return soc_pcmcia_request_irqs(skt, irqs, ARRAY_SIZE(irqs));
}
