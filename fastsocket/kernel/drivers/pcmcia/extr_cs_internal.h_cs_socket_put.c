
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int state; int owner; } ;


 int SOCKET_INUSE ;
 int module_put (int ) ;

__attribute__((used)) static inline void cs_socket_put(struct pcmcia_socket *skt)
{
 if (skt->state & SOCKET_INUSE) {
  skt->state &= ~SOCKET_INUSE;
  module_put(skt->owner);
 }
}
