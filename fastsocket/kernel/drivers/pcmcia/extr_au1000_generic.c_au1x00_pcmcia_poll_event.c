
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1000_pcmcia_socket {int poll_timer; } ;


 scalar_t__ AU1000_PCMCIA_POLL_PERIOD ;
 int au1x00_check_status (struct au1000_pcmcia_socket*) ;
 int debug (char*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void au1x00_pcmcia_poll_event(unsigned long dummy)
{
 struct au1000_pcmcia_socket *skt = (struct au1000_pcmcia_socket *)dummy;
 debug("polling for events\n");

 mod_timer(&skt->poll_timer, jiffies + AU1000_PCMCIA_POLL_PERIOD);

 au1x00_check_status(skt);
}
