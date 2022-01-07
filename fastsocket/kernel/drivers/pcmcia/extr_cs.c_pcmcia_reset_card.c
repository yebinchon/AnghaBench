
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int state; int skt_mutex; TYPE_1__* callback; } ;
struct TYPE_2__ {int (* resume ) (struct pcmcia_socket*) ;int (* suspend ) (struct pcmcia_socket*) ;} ;


 int CS_EVENT_CARD_RESET ;
 int CS_EVENT_PRI_LOW ;
 int CS_EVENT_RESET_PHYSICAL ;
 int CS_EVENT_RESET_REQUEST ;
 int EBUSY ;
 int ENODEV ;
 int EPERM ;
 int SOCKET_CARDBUS ;
 int SOCKET_PRESENT ;
 int SOCKET_SUSPEND ;
 int cs_dbg (struct pcmcia_socket*,int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_event (struct pcmcia_socket*,int ,int ) ;
 scalar_t__ socket_reset (struct pcmcia_socket*) ;
 int stub1 (struct pcmcia_socket*) ;
 int stub2 (struct pcmcia_socket*) ;

int pcmcia_reset_card(struct pcmcia_socket *skt)
{
 int ret;

 cs_dbg(skt, 1, "resetting socket\n");

 mutex_lock(&skt->skt_mutex);
 do {
  if (!(skt->state & SOCKET_PRESENT)) {
   ret = -ENODEV;
   break;
  }
  if (skt->state & SOCKET_SUSPEND) {
   ret = -EBUSY;
   break;
  }
  if (skt->state & SOCKET_CARDBUS) {
   ret = -EPERM;
   break;
  }

  ret = send_event(skt, CS_EVENT_RESET_REQUEST, CS_EVENT_PRI_LOW);
  if (ret == 0) {
   send_event(skt, CS_EVENT_RESET_PHYSICAL, CS_EVENT_PRI_LOW);
   if (skt->callback)
    skt->callback->suspend(skt);
   if (socket_reset(skt) == 0) {
    send_event(skt, CS_EVENT_CARD_RESET, CS_EVENT_PRI_LOW);
    if (skt->callback)
     skt->callback->resume(skt);
   }
  }

  ret = 0;
 } while (0);
 mutex_unlock(&skt->skt_mutex);

 return ret;
}
