
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int state; TYPE_1__* ops; int socket; } ;
struct TYPE_2__ {int (* suspend ) (struct pcmcia_socket*) ;int (* set_socket ) (struct pcmcia_socket*,int *) ;} ;


 int CS_EVENT_PM_SUSPEND ;
 int CS_EVENT_PRI_LOW ;
 int EBUSY ;
 int SOCKET_SUSPEND ;
 int dead_socket ;
 int send_event (struct pcmcia_socket*,int ,int ) ;
 int stub1 (struct pcmcia_socket*,int *) ;
 int stub2 (struct pcmcia_socket*) ;

__attribute__((used)) static int socket_suspend(struct pcmcia_socket *skt)
{
 if (skt->state & SOCKET_SUSPEND)
  return -EBUSY;

 send_event(skt, CS_EVENT_PM_SUSPEND, CS_EVENT_PRI_LOW);
 skt->socket = dead_socket;
 skt->ops->set_socket(skt, &skt->socket);
 if (skt->ops->suspend)
  skt->ops->suspend(skt);
 skt->state |= SOCKET_SUSPEND;

 return 0;
}
