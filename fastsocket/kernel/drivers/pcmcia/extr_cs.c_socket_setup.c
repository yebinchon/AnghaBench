
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int Vcc; int Vpp; scalar_t__ flags; } ;
struct pcmcia_socket {int features; int (* power_hook ) (struct pcmcia_socket*,int ) ;TYPE_1__* ops; TYPE_2__ socket; int state; } ;
struct TYPE_3__ {int (* get_status ) (struct pcmcia_socket*,int*) ;int (* set_socket ) (struct pcmcia_socket*,TYPE_2__*) ;} ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ETIMEDOUT ;
 int HOOK_POWER_POST ;
 int HOOK_POWER_PRE ;
 int SOCKET_CARDBUS ;
 int SS_3VCARD ;
 int SS_CAP_CARDBUS ;
 int SS_CARDBUS ;
 int SS_DETECT ;
 int SS_PENDING ;
 int SS_POWERON ;
 int SS_XVCARD ;
 int cs_dbg (struct pcmcia_socket*,int,char*) ;
 int cs_err (struct pcmcia_socket*,char*) ;
 int msleep (int) ;
 int socket_reset (struct pcmcia_socket*) ;
 int stub1 (struct pcmcia_socket*,int*) ;
 int stub2 (struct pcmcia_socket*,int*) ;
 int stub3 (struct pcmcia_socket*,int ) ;
 int stub4 (struct pcmcia_socket*,TYPE_2__*) ;
 int stub5 (struct pcmcia_socket*,int*) ;
 int stub6 (struct pcmcia_socket*,int ) ;
 int vcc_settle ;

__attribute__((used)) static int socket_setup(struct pcmcia_socket *skt, int initial_delay)
{
 int status, i;

 cs_dbg(skt, 4, "setup\n");

 skt->ops->get_status(skt, &status);
 if (!(status & SS_DETECT))
  return -ENODEV;

 msleep(initial_delay * 10);

 for (i = 0; i < 100; i++) {
  skt->ops->get_status(skt, &status);
  if (!(status & SS_DETECT))
   return -ENODEV;

  if (!(status & SS_PENDING))
   break;

  msleep(100);
 }

 if (status & SS_PENDING) {
  cs_err(skt, "voltage interrogation timed out.\n");
  return -ETIMEDOUT;
 }

 if (status & SS_CARDBUS) {
  if (!(skt->features & SS_CAP_CARDBUS)) {
   cs_err(skt, "cardbus cards are not supported.\n");
   return -EINVAL;
  }
  skt->state |= SOCKET_CARDBUS;
 }




 if (status & SS_3VCARD)
  skt->socket.Vcc = skt->socket.Vpp = 33;
 else if (!(status & SS_XVCARD))
  skt->socket.Vcc = skt->socket.Vpp = 50;
 else {
  cs_err(skt, "unsupported voltage key.\n");
  return -EIO;
 }

 if (skt->power_hook)
  skt->power_hook(skt, HOOK_POWER_PRE);

 skt->socket.flags = 0;
 skt->ops->set_socket(skt, &skt->socket);




 msleep(vcc_settle * 10);

 skt->ops->get_status(skt, &status);
 if (!(status & SS_POWERON)) {
  cs_err(skt, "unable to apply power.\n");
  return -EIO;
 }

 status = socket_reset(skt);

 if (skt->power_hook)
  skt->power_hook(skt, HOOK_POWER_POST);

 return status;
}
