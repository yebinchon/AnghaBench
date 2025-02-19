
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {size_t nr; } ;
struct pcmcia_state {int detect; int ready; int bvd1; int bvd2; int vs_3v; int vs_Xv; int wrprot; } ;


 unsigned short CFSR_readw () ;
 unsigned short ConXS_CFSR_BVD1 ;
 unsigned short ConXS_CFSR_BVD2 ;
 unsigned short ConXS_CFSR_BVD_MASK ;
 unsigned short ConXS_CFSR_VS1 ;
 unsigned short ConXS_CFSR_VS2 ;
 int GPIO_PCD ;
 int GPIO_PRDY ;
 int gpio_get_value (int ) ;
 unsigned short* trizeps_pcmcia_status ;

__attribute__((used)) static void trizeps_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
    struct pcmcia_state *state)
{
 unsigned short status = 0, change;
 status = CFSR_readw();
 change = (status ^ trizeps_pcmcia_status[skt->nr]) &
    ConXS_CFSR_BVD_MASK;
 if (change) {
  trizeps_pcmcia_status[skt->nr] = status;
  if (status & ConXS_CFSR_BVD1) {

  } else {

  }
 }

 switch (skt->nr) {
 case 0:

  state->detect = gpio_get_value(GPIO_PCD) ? 0 : 1;
  state->ready = gpio_get_value(GPIO_PRDY) ? 1 : 0;
  state->bvd1 = (status & ConXS_CFSR_BVD1) ? 1 : 0;
  state->bvd2 = (status & ConXS_CFSR_BVD2) ? 1 : 0;
  state->vs_3v = (status & ConXS_CFSR_VS1) ? 0 : 1;
  state->vs_Xv = (status & ConXS_CFSR_VS2) ? 0 : 1;
  state->wrprot = 0;
  break;



 case 1:
  state->detect = 0;
  state->ready = 0;
  state->bvd1 = 0;
  state->bvd2 = 0;
  state->vs_3v = 0;
  state->vs_Xv = 0;
  state->wrprot = 0;
  break;


 }
}
