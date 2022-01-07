
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;
struct pcmcia_state {int detect; int ready; int bvd1; int bvd2; int vs_3v; scalar_t__ vs_Xv; scalar_t__ wrprot; } ;


 int VIPER_CF_CD_GPIO ;
 int VIPER_CF_RDY_GPIO ;
 scalar_t__ gpio_get_value (int ) ;

__attribute__((used)) static void viper_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
          struct pcmcia_state *state)
{
 state->detect = gpio_get_value(VIPER_CF_CD_GPIO) ? 0 : 1;
 state->ready = gpio_get_value(VIPER_CF_RDY_GPIO) ? 1 : 0;
 state->bvd1 = 1;
 state->bvd2 = 1;
 state->wrprot = 0;
 state->vs_3v = 1;
 state->vs_Xv = 0;
}
