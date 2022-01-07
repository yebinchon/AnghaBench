
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;
struct pcmcia_state {int detect; int ready; int vs_3v; scalar_t__ wrprot; scalar_t__ vs_Xv; scalar_t__ bvd2; scalar_t__ bvd1; } ;


 int SG2_S0_GPIO_DETECT ;
 int SG2_S0_GPIO_READY ;
 int gpio_get_value (int ) ;

__attribute__((used)) static void sg2_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
        struct pcmcia_state *state)
{
 state->detect = !gpio_get_value(SG2_S0_GPIO_DETECT);
 state->ready = !!gpio_get_value(SG2_S0_GPIO_READY);
 state->bvd1 = 0;
 state->bvd2 = 0;
 state->vs_3v = 1;
 state->vs_Xv = 0;
 state->wrprot = 0;
}
