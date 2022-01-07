
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int state; int resume_status; int socket; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_socket ) (struct pcmcia_socket*,int *) ;int (* init ) (struct pcmcia_socket*) ;} ;


 int SOCKET_PRESENT ;
 int dead_socket ;
 int resume_delay ;
 int socket_setup (struct pcmcia_socket*,int ) ;
 int stub1 (struct pcmcia_socket*) ;
 int stub2 (struct pcmcia_socket*,int *) ;

__attribute__((used)) static int socket_early_resume(struct pcmcia_socket *skt)
{
 skt->socket = dead_socket;
 skt->ops->init(skt);
 skt->ops->set_socket(skt, &skt->socket);
 if (skt->state & SOCKET_PRESENT)
  skt->resume_status = socket_setup(skt, resume_delay);
 return 0;
}
