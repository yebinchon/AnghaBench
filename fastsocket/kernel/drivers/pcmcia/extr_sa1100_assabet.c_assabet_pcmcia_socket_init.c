
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ASSABET_BCR_CF_BUS_OFF ;
 int ASSABET_BCR_clear (int ) ;
 int irqs ;
 int soc_pcmcia_enable_irqs (struct soc_pcmcia_socket*,int ,int ) ;

__attribute__((used)) static void assabet_pcmcia_socket_init(struct soc_pcmcia_socket *skt)
{



 ASSABET_BCR_clear(ASSABET_BCR_CF_BUS_OFF);

 soc_pcmcia_enable_irqs(skt, irqs, ARRAY_SIZE(irqs));
}
