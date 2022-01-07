
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {scalar_t__ nr; } ;
struct pcmcia_state {int detect; int ready; int vs_3v; int bvd1; int bvd2; scalar_t__ vs_Xv; scalar_t__ wrprot; } ;


 int GPIO_E740_PCMCIA_CD0 ;
 int GPIO_E740_PCMCIA_CD1 ;
 int GPIO_E740_PCMCIA_RDY0 ;
 int GPIO_E740_PCMCIA_RDY1 ;
 scalar_t__ gpio_get_value (int ) ;

__attribute__((used)) static void e740_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
     struct pcmcia_state *state)
{
 if (skt->nr == 0) {
  state->detect = gpio_get_value(GPIO_E740_PCMCIA_CD0) ? 0 : 1;
  state->ready = gpio_get_value(GPIO_E740_PCMCIA_RDY0) ? 1 : 0;
 } else {
  state->detect = gpio_get_value(GPIO_E740_PCMCIA_CD1) ? 0 : 1;
  state->ready = gpio_get_value(GPIO_E740_PCMCIA_RDY1) ? 1 : 0;
 }

 state->vs_3v = 1;
 state->bvd1 = 1;
 state->bvd2 = 1;
 state->wrprot = 0;
 state->vs_Xv = 0;
}
