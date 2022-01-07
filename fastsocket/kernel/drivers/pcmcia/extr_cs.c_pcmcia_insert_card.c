
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int state; int skt_mutex; } ;


 int EBUSY ;
 int ENODEV ;
 int SOCKET_PRESENT ;
 int cs_dbg (struct pcmcia_socket*,int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int socket_insert (struct pcmcia_socket*) ;

int pcmcia_insert_card(struct pcmcia_socket *skt)
{
 int ret;

 cs_dbg(skt, 1, "user insert request\n");

 mutex_lock(&skt->skt_mutex);
 do {
  if (skt->state & SOCKET_PRESENT) {
   ret = -EBUSY;
   break;
  }
  if (socket_insert(skt) == -ENODEV) {
   ret = -ENODEV;
   break;
  }
  ret = 0;
 } while (0);
 mutex_unlock(&skt->skt_mutex);

 return ret;
}
