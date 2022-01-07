
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int state; scalar_t__ resume_status; } ;


 int CS_EVENT_CARD_INSERTION ;
 int CS_EVENT_PM_RESUME ;
 int CS_EVENT_PRI_LOW ;
 int SOCKET_PRESENT ;
 int SOCKET_SUSPEND ;
 int cs_dbg (struct pcmcia_socket*,int,char*) ;
 int destroy_cis_cache (struct pcmcia_socket*) ;
 int msleep (int) ;
 int send_event (struct pcmcia_socket*,int ,int ) ;
 int socket_insert (struct pcmcia_socket*) ;
 int socket_remove_drivers (struct pcmcia_socket*) ;
 int socket_shutdown (struct pcmcia_socket*) ;
 scalar_t__ verify_cis_cache (struct pcmcia_socket*) ;

__attribute__((used)) static int socket_late_resume(struct pcmcia_socket *skt)
{
 if (!(skt->state & SOCKET_PRESENT)) {
  skt->state &= ~SOCKET_SUSPEND;
  return socket_insert(skt);
 }

 if (skt->resume_status == 0) {



  if (verify_cis_cache(skt) != 0) {
   cs_dbg(skt, 4, "cis mismatch - different card\n");
   socket_remove_drivers(skt);
   destroy_cis_cache(skt);





   msleep(200);
   send_event(skt, CS_EVENT_CARD_INSERTION, CS_EVENT_PRI_LOW);
  } else {
   cs_dbg(skt, 4, "cis matches cache\n");
   send_event(skt, CS_EVENT_PM_RESUME, CS_EVENT_PRI_LOW);
  }
 } else {
  socket_shutdown(skt);
 }

 skt->state &= ~SOCKET_SUSPEND;

 return 0;
}
