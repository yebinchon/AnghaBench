
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct at91mci_host {int flags; TYPE_1__* request; int mmc; int timer; } ;
struct TYPE_2__ {scalar_t__ stop; scalar_t__ cmd; } ;


 int FL_SENT_COMMAND ;
 int FL_SENT_STOP ;
 int at91_mci_send_command (struct at91mci_host*,scalar_t__) ;
 int at91_reset_host (struct at91mci_host*) ;
 scalar_t__ cpu_is_at91rm9200 () ;
 int del_timer (int *) ;
 int mmc_request_done (int ,TYPE_1__*) ;

__attribute__((used)) static void at91_mci_process_next(struct at91mci_host *host)
{
 if (!(host->flags & FL_SENT_COMMAND)) {
  host->flags |= FL_SENT_COMMAND;
  at91_mci_send_command(host, host->request->cmd);
 }
 else if ((!(host->flags & FL_SENT_STOP)) && host->request->stop) {
  host->flags |= FL_SENT_STOP;
  at91_mci_send_command(host, host->request->stop);
 } else {
  del_timer(&host->timer);



  if (cpu_is_at91rm9200())
   at91_reset_host(host);
  mmc_request_done(host->mmc, host->request);
 }
}
