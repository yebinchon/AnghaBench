
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct soc_pcmcia_socket {int dummy; } ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ socket_state_t ;


 int GPIO_NR_PALMTX_PCMCIA_POWER1 ;
 int GPIO_NR_PALMTX_PCMCIA_POWER2 ;
 int GPIO_NR_PALMTX_PCMCIA_RESET ;
 int SS_RESET ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int
palmtx_pcmcia_configure_socket(struct soc_pcmcia_socket *skt,
    const socket_state_t *state)
{
 gpio_set_value(GPIO_NR_PALMTX_PCMCIA_POWER1, 1);
 gpio_set_value(GPIO_NR_PALMTX_PCMCIA_POWER2, 1);
 gpio_set_value(GPIO_NR_PALMTX_PCMCIA_RESET,
   !!(state->flags & SS_RESET));

 return 0;
}
