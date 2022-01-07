
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {TYPE_1__* ops; } ;
struct pcmcia_socket {int dummy; } ;
struct TYPE_2__ {int (* socket_init ) (struct soc_pcmcia_socket*) ;} ;


 int debug (struct soc_pcmcia_socket*,int,char*) ;
 int stub1 (struct soc_pcmcia_socket*) ;
 struct soc_pcmcia_socket* to_soc_pcmcia_socket (struct pcmcia_socket*) ;

__attribute__((used)) static int soc_common_pcmcia_sock_init(struct pcmcia_socket *sock)
{
 struct soc_pcmcia_socket *skt = to_soc_pcmcia_socket(sock);

 debug(skt, 2, "initializing socket\n");

 skt->ops->socket_init(skt);
 return 0;
}
