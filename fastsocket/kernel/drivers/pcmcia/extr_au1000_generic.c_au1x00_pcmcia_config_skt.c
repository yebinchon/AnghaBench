
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct au1000_pcmcia_socket {int nr; int cs_state; TYPE_1__* ops; } ;
typedef int socket_state_t ;
struct TYPE_2__ {int (* configure_socket ) (struct au1000_pcmcia_socket*,int *) ;} ;


 int debug (char*,int ) ;
 int stub1 (struct au1000_pcmcia_socket*,int *) ;

__attribute__((used)) static int
au1x00_pcmcia_config_skt(struct au1000_pcmcia_socket *skt, socket_state_t *state)
{
 int ret;

 ret = skt->ops->configure_socket(skt, state);
 if (ret == 0) {
  skt->cs_state = *state;
 }

 if (ret < 0)
  debug("unable to configure socket %d\n", skt->nr);

 return ret;
}
