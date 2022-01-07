
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int irq; } ;


 int ARRAY_SIZE (int ) ;
 int EN0 ;
 int EN1 ;
 int IRQ_GPIO_CF_IRQ ;
 int VCC_3V_EN ;
 int VCC_5V_EN ;
 int clear_cs3_bit (int) ;
 int irqs ;
 int soc_pcmcia_request_irqs (struct soc_pcmcia_socket*,int ,int ) ;

__attribute__((used)) static int simpad_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{

 clear_cs3_bit(VCC_3V_EN|VCC_5V_EN|EN0|EN1);

 skt->irq = IRQ_GPIO_CF_IRQ;

 return soc_pcmcia_request_irqs(skt, irqs, ARRAY_SIZE(irqs));
}
