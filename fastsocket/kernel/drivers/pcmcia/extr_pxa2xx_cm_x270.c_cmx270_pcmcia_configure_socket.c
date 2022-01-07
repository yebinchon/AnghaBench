
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct soc_pcmcia_socket {int nr; } ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ socket_state_t ;


 int GPIO_PCMCIA_RESET ;
 int SS_RESET ;
 int gpio_set_value (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int cmx270_pcmcia_configure_socket(struct soc_pcmcia_socket *skt,
       const socket_state_t *state)
{
 switch (skt->nr) {
 case 0:
  if (state->flags & SS_RESET) {
   gpio_set_value(GPIO_PCMCIA_RESET, 1);
   udelay(10);
   gpio_set_value(GPIO_PCMCIA_RESET, 0);
  }
  break;
 }

 return 0;
}
