
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int nr; } ;
struct pcmcia_state {int detect; int ready; int bvd1; int bvd2; int vs_3v; int vs_Xv; int wrprot; } ;


 unsigned long GPLR ;
 unsigned long SHANNON_GPIO_EJECT_0 ;
 unsigned long SHANNON_GPIO_EJECT_1 ;
 unsigned long SHANNON_GPIO_RDY_0 ;
 unsigned long SHANNON_GPIO_RDY_1 ;

__attribute__((used)) static void
shannon_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
       struct pcmcia_state *state)
{
 unsigned long levels = GPLR;

 switch (skt->nr) {
 case 0:
  state->detect = (levels & SHANNON_GPIO_EJECT_0) ? 0 : 1;
  state->ready = (levels & SHANNON_GPIO_RDY_0) ? 1 : 0;
  state->wrprot = 0;
  state->bvd1 = 1;
  state->bvd2 = 1;
  state->vs_3v = 1;
  state->vs_Xv = 0;
  break;

 case 1:
  state->detect = (levels & SHANNON_GPIO_EJECT_1) ? 0 : 1;
  state->ready = (levels & SHANNON_GPIO_RDY_1) ? 1 : 0;
  state->wrprot = 0;
  state->bvd1 = 1;
  state->bvd2 = 1;
  state->vs_3v = 1;
  state->vs_Xv = 0;
  break;
 }
}
