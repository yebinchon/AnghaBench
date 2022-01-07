
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int debug (struct soc_pcmcia_socket*,int,char*,int) ;
 int soc_common_check_status (struct soc_pcmcia_socket*) ;

__attribute__((used)) static irqreturn_t soc_common_pcmcia_interrupt(int irq, void *dev)
{
 struct soc_pcmcia_socket *skt = dev;

 debug(skt, 3, "servicing IRQ %d\n", irq);

 soc_common_check_status(skt);

 return IRQ_HANDLED;
}
