
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ipw_tty {size_t index; int closing; int ipw_tty_mutex; int channel_idx; scalar_t__ open_count; int * linux_tty; struct ipw_network* network; } ;
struct ipw_network {int dummy; } ;
struct TYPE_3__ {scalar_t__ minor_start; } ;


 int IPWIRELESS_PCMCIA_MINORS ;
 scalar_t__ IPWIRELESS_PCMCIA_MINOR_RANGE ;
 int do_ipw_close (struct ipw_tty*) ;
 int flush_scheduled_work () ;
 struct ipw_tty* get_tty (scalar_t__) ;
 TYPE_1__* ipw_tty_driver ;
 int ipwireless_disassociate_network_ttys (struct ipw_network*,int ) ;
 int kfree (struct ipw_tty*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int report_deregistering (struct ipw_tty*) ;
 int tty_hangup (int *) ;
 int tty_unregister_device (TYPE_1__*,int) ;
 struct ipw_tty** ttys ;

void ipwireless_tty_free(struct ipw_tty *tty)
{
 int j;
 struct ipw_network *network = ttys[tty->index]->network;

 for (j = tty->index; j < IPWIRELESS_PCMCIA_MINORS;
   j += IPWIRELESS_PCMCIA_MINOR_RANGE) {
  struct ipw_tty *ttyj = ttys[j];

  if (ttyj) {
   mutex_lock(&ttyj->ipw_tty_mutex);
   if (get_tty(j + ipw_tty_driver->minor_start) == ttyj)
    report_deregistering(ttyj);
   ttyj->closing = 1;
   if (ttyj->linux_tty != ((void*)0)) {
    mutex_unlock(&ttyj->ipw_tty_mutex);
    tty_hangup(ttyj->linux_tty);

    flush_scheduled_work();


    mutex_lock(&ttyj->ipw_tty_mutex);
   }
   while (ttyj->open_count)
    do_ipw_close(ttyj);
   ipwireless_disassociate_network_ttys(network,
            ttyj->channel_idx);
   tty_unregister_device(ipw_tty_driver, j);
   ttys[j] = ((void*)0);
   mutex_unlock(&ttyj->ipw_tty_mutex);
   kfree(ttyj);
  }
 }
}
