
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int csc_mask; } ;
struct soc_pcmcia_socket {unsigned int status; int socket; TYPE_1__ cs_state; } ;


 unsigned int SS_BATDEAD ;
 unsigned int SS_BATWARN ;
 unsigned int SS_DETECT ;
 unsigned int SS_READY ;
 unsigned int SS_STSCHG ;
 int debug (struct soc_pcmcia_socket*,int,char*,...) ;
 int pcmcia_parse_events (int *,unsigned int) ;
 unsigned int soc_common_pcmcia_skt_state (struct soc_pcmcia_socket*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int status_lock ;

__attribute__((used)) static void soc_common_check_status(struct soc_pcmcia_socket *skt)
{
 unsigned int events;

 debug(skt, 4, "entering PCMCIA monitoring thread\n");

 do {
  unsigned int status;
  unsigned long flags;

  status = soc_common_pcmcia_skt_state(skt);

  spin_lock_irqsave(&status_lock, flags);
  events = (status ^ skt->status) & skt->cs_state.csc_mask;
  skt->status = status;
  spin_unlock_irqrestore(&status_lock, flags);

  debug(skt, 4, "events: %s%s%s%s%s%s\n",
   events == 0 ? "<NONE>" : "",
   events & SS_DETECT ? "DETECT " : "",
   events & SS_READY ? "READY " : "",
   events & SS_BATDEAD ? "BATDEAD " : "",
   events & SS_BATWARN ? "BATWARN " : "",
   events & SS_STSCHG ? "STSCHG " : "");

  if (events)
   pcmcia_parse_events(&skt->socket, events);
 } while (events);
}
