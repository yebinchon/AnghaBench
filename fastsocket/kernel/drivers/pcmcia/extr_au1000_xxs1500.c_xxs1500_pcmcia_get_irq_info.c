
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_irq_info {scalar_t__ sock; int irq; } ;


 int PCMCIA_IRQ ;
 scalar_t__ PCMCIA_MAX_SOCK ;

__attribute__((used)) static int xxs1500_pcmcia_get_irq_info(struct pcmcia_irq_info *info)
{

 if(info->sock > PCMCIA_MAX_SOCK) return -1;
 info->irq = PCMCIA_IRQ;
 return 0;
}
