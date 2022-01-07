
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int state; int skt_mutex; } ;


 int CS_EVENT_EJECTION_REQUEST ;
 int CS_EVENT_PRI_LOW ;
 int EINVAL ;
 int ENODEV ;
 int SOCKET_PRESENT ;
 int cs_dbg (struct pcmcia_socket*,int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_event (struct pcmcia_socket*,int ,int ) ;
 int socket_remove (struct pcmcia_socket*) ;

int pcmcia_eject_card(struct pcmcia_socket *skt)
{
 int ret;

 cs_dbg(skt, 1, "user eject request\n");

 mutex_lock(&skt->skt_mutex);
 do {
  if (!(skt->state & SOCKET_PRESENT)) {
   ret = -ENODEV;
   break;
  }

  ret = send_event(skt, CS_EVENT_EJECTION_REQUEST, CS_EVENT_PRI_LOW);
  if (ret != 0) {
   ret = -EINVAL;
   break;
  }

  socket_remove(skt);
  ret = 0;
 } while (0);
 mutex_unlock(&skt->skt_mutex);

 return ret;
}
