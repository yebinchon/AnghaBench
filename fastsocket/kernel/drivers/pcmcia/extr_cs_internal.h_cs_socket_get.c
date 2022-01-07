
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int state; int owner; } ;


 int SOCKET_INUSE ;
 int WARN_ON (int) ;
 int try_module_get (int ) ;

__attribute__((used)) static inline int cs_socket_get(struct pcmcia_socket *skt)
{
 int ret;

 WARN_ON(skt->state & SOCKET_INUSE);

 ret = try_module_get(skt->owner);
 if (ret)
  skt->state |= SOCKET_INUSE;
 return ret;
}
