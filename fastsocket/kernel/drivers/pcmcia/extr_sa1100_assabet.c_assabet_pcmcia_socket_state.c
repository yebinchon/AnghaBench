
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;
struct pcmcia_state {int detect; int ready; int bvd1; int bvd2; int vs_3v; scalar_t__ vs_Xv; scalar_t__ wrprot; } ;


 unsigned long ASSABET_GPIO_CF_BVD1 ;
 unsigned long ASSABET_GPIO_CF_BVD2 ;
 unsigned long ASSABET_GPIO_CF_CD ;
 unsigned long ASSABET_GPIO_CF_IRQ ;
 unsigned long GPLR ;

__attribute__((used)) static void
assabet_pcmcia_socket_state(struct soc_pcmcia_socket *skt, struct pcmcia_state *state)
{
 unsigned long levels = GPLR;

 state->detect = (levels & ASSABET_GPIO_CF_CD) ? 0 : 1;
 state->ready = (levels & ASSABET_GPIO_CF_IRQ) ? 1 : 0;
 state->bvd1 = (levels & ASSABET_GPIO_CF_BVD1) ? 1 : 0;
 state->bvd2 = (levels & ASSABET_GPIO_CF_BVD2) ? 1 : 0;
 state->wrprot = 0;
 state->vs_3v = 1;
 state->vs_Xv = 0;
}
