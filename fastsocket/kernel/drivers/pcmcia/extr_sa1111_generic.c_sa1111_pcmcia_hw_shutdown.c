
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int irqs ;
 int soc_pcmcia_free_irqs (struct soc_pcmcia_socket*,int ,int ) ;

void sa1111_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 soc_pcmcia_free_irqs(skt, irqs, ARRAY_SIZE(irqs));
}
