
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int state; int skt_mutex; TYPE_1__* callback; } ;
struct TYPE_2__ {int (* suspend ) (struct pcmcia_socket*) ;} ;


 int ENODEV ;
 int EPERM ;
 int SOCKET_CARDBUS ;
 int SOCKET_PRESENT ;
 int cs_dbg (struct pcmcia_socket*,int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int socket_suspend (struct pcmcia_socket*) ;
 int stub1 (struct pcmcia_socket*) ;

int pcmcia_suspend_card(struct pcmcia_socket *skt)
{
 int ret;

 cs_dbg(skt, 1, "suspending socket\n");

 mutex_lock(&skt->skt_mutex);
 do {
  if (!(skt->state & SOCKET_PRESENT)) {
   ret = -ENODEV;
   break;
  }
  if (skt->state & SOCKET_CARDBUS) {
   ret = -EPERM;
   break;
  }
  if (skt->callback) {
   ret = skt->callback->suspend(skt);
   if (ret)
    break;
  }
  ret = socket_suspend(skt);
 } while (0);
 mutex_unlock(&skt->skt_mutex);

 return ret;
}
