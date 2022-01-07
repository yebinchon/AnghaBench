
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int csc_mask; } ;
struct bcm63xx_pcmcia_socket {unsigned int old_status; int timer; int socket; int lock; TYPE_1__ requested_state; } ;


 int BCM63XX_PCMCIA_POLL_RATE ;
 unsigned int __get_socket_status (struct bcm63xx_pcmcia_socket*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int pcmcia_parse_events (int *,unsigned int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void bcm63xx_pcmcia_poll(unsigned long data)
{
 struct bcm63xx_pcmcia_socket *skt;
 unsigned int stat, events;

 skt = (struct bcm63xx_pcmcia_socket *)data;

 spin_lock_bh(&skt->lock);

 stat = __get_socket_status(skt);



 events = (stat ^ skt->old_status) & skt->requested_state.csc_mask;
 skt->old_status = stat;
 spin_unlock_bh(&skt->lock);

 if (events)
  pcmcia_parse_events(&skt->socket, events);

 mod_timer(&skt->timer,
    jiffies + msecs_to_jiffies(BCM63XX_PCMCIA_POLL_RATE));
}
