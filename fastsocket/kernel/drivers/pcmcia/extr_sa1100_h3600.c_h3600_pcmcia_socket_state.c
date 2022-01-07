
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int nr; } ;
struct pcmcia_state {int detect; int ready; int vs_Xv; int vs_3v; int wrprot; int bvd2; int bvd1; } ;


 unsigned long GPIO_H3600_PCMCIA_CD0 ;
 unsigned long GPIO_H3600_PCMCIA_CD1 ;
 unsigned long GPIO_H3600_PCMCIA_IRQ0 ;
 unsigned long GPIO_H3600_PCMCIA_IRQ1 ;
 unsigned long GPLR ;

__attribute__((used)) static void
h3600_pcmcia_socket_state(struct soc_pcmcia_socket *skt, struct pcmcia_state *state)
{
 unsigned long levels = GPLR;

 switch (skt->nr) {
 case 0:
  state->detect = levels & GPIO_H3600_PCMCIA_CD0 ? 0 : 1;
  state->ready = levels & GPIO_H3600_PCMCIA_IRQ0 ? 1 : 0;
  state->bvd1 = 0;
  state->bvd2 = 0;
  state->wrprot = 0;
  state->vs_3v = 0;
  state->vs_Xv = 0;
  break;

 case 1:
  state->detect = levels & GPIO_H3600_PCMCIA_CD1 ? 0 : 1;
  state->ready = levels & GPIO_H3600_PCMCIA_IRQ1 ? 1 : 0;
  state->bvd1 = 0;
  state->bvd2 = 0;
  state->wrprot = 0;
  state->vs_3v = 0;
  state->vs_Xv = 0;
  break;
 }
}
