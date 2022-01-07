
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;
struct pcmcia_state {int detect; int ready; int bvd1; int bvd2; scalar_t__ wrprot; scalar_t__ vs_Xv; scalar_t__ vs_3v; } ;


 int GPIO_PCMCIA_S0_CD_VALID ;
 int GPIO_PCMCIA_S0_RDYINT ;
 scalar_t__ gpio_get_value (int ) ;

__attribute__((used)) static void cmx270_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
           struct pcmcia_state *state)
{
 state->detect = (gpio_get_value(GPIO_PCMCIA_S0_CD_VALID) == 0) ? 1 : 0;
 state->ready = (gpio_get_value(GPIO_PCMCIA_S0_RDYINT) == 0) ? 0 : 1;
 state->bvd1 = 1;
 state->bvd2 = 1;
 state->vs_3v = 0;
 state->vs_Xv = 0;
 state->wrprot = 0;
}
