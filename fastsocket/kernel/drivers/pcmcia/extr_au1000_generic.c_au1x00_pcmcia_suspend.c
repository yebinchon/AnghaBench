
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int dummy; } ;
struct au1000_pcmcia_socket {TYPE_1__* ops; int nr; } ;
struct TYPE_2__ {int (* socket_suspend ) (struct au1000_pcmcia_socket*) ;} ;


 int debug (char*,int ) ;
 int stub1 (struct au1000_pcmcia_socket*) ;
 struct au1000_pcmcia_socket* to_au1000_socket (struct pcmcia_socket*) ;

__attribute__((used)) static int au1x00_pcmcia_suspend(struct pcmcia_socket *sock)
{
 struct au1000_pcmcia_socket *skt = to_au1000_socket(sock);

 debug("suspending socket %u\n", skt->nr);

 skt->ops->socket_suspend(skt);

 return 0;
}
