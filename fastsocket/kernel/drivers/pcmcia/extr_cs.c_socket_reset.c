
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct pcmcia_socket {TYPE_1__* ops; TYPE_2__ socket; } ;
struct TYPE_4__ {int (* get_status ) (struct pcmcia_socket*,int*) ;int (* set_socket ) (struct pcmcia_socket*,TYPE_2__*) ;} ;


 int ENODEV ;
 int ETIMEDOUT ;
 int SS_DETECT ;
 int SS_OUTPUT_ENA ;
 int SS_READY ;
 int SS_RESET ;
 int cs_dbg (struct pcmcia_socket*,int,char*) ;
 int cs_err (struct pcmcia_socket*,char*) ;
 int msleep (int) ;
 scalar_t__ reset_time ;
 int stub1 (struct pcmcia_socket*,TYPE_2__*) ;
 int stub2 (struct pcmcia_socket*,TYPE_2__*) ;
 int stub3 (struct pcmcia_socket*,int*) ;
 int udelay (long) ;
 int unreset_check ;
 int unreset_delay ;
 int unreset_limit ;

__attribute__((used)) static int socket_reset(struct pcmcia_socket *skt)
{
 int status, i;

 cs_dbg(skt, 4, "reset\n");

 skt->socket.flags |= SS_OUTPUT_ENA | SS_RESET;
 skt->ops->set_socket(skt, &skt->socket);
 udelay((long)reset_time);

 skt->socket.flags &= ~SS_RESET;
 skt->ops->set_socket(skt, &skt->socket);

 msleep(unreset_delay * 10);
 for (i = 0; i < unreset_limit; i++) {
  skt->ops->get_status(skt, &status);

  if (!(status & SS_DETECT))
   return -ENODEV;

  if (status & SS_READY)
   return 0;

  msleep(unreset_check * 10);
 }

 cs_err(skt, "time out after reset.\n");
 return -ETIMEDOUT;
}
