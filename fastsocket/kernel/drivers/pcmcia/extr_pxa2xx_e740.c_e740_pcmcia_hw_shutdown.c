
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {size_t nr; } ;


 int * cd_irqs ;
 int soc_pcmcia_free_irqs (struct soc_pcmcia_socket*,int *,int) ;

__attribute__((used)) static void e740_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 soc_pcmcia_free_irqs(skt, &cd_irqs[skt->nr], 1);
}
