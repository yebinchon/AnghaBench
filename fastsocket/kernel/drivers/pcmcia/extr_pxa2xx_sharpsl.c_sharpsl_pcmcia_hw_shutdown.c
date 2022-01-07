
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {size_t nr; } ;
struct pcmcia_irqs {size_t sock; scalar_t__ irq; int str; } ;
struct TYPE_2__ {scalar_t__ cd_irq; int cd_irq_str; } ;


 TYPE_1__* SCOOP_DEV ;
 int soc_pcmcia_free_irqs (struct soc_pcmcia_socket*,struct pcmcia_irqs*,int) ;

__attribute__((used)) static void sharpsl_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 if (SCOOP_DEV[skt->nr].cd_irq >= 0) {
  struct pcmcia_irqs cd_irq;

  cd_irq.sock = skt->nr;
  cd_irq.irq = SCOOP_DEV[skt->nr].cd_irq;
  cd_irq.str = SCOOP_DEV[skt->nr].cd_irq_str;
  soc_pcmcia_free_irqs(skt, &cd_irq, 1);
 }
}
