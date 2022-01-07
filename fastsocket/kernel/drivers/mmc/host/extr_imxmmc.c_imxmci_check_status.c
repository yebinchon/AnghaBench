
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imxmci_host {int present; int timer; int stuck_timeout; int tasklet; int pending_events; int mmc; TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* card_present ) (int ) ;} ;


 int HZ ;
 int IMXMCI_PEND_CARD_XCHG_b ;
 int IMXMCI_PEND_DMA_DATA_b ;
 int IMXMCI_PEND_WAIT_RESP_b ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_info (int ,char*,char*) ;
 scalar_t__ jiffies ;
 int mmc_dev (int ) ;
 int mod_timer (int *,scalar_t__) ;
 int set_bit (int ,int *) ;
 int stub1 (int ) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void imxmci_check_status(unsigned long data)
{
 struct imxmci_host *host = (struct imxmci_host *)data;

 if (host->pdata && host->pdata->card_present &&
     host->pdata->card_present(mmc_dev(host->mmc)) != host->present) {
  host->present ^= 1;
  dev_info(mmc_dev(host->mmc), "card %s\n",
        host->present ? "inserted" : "removed");

  set_bit(IMXMCI_PEND_CARD_XCHG_b, &host->pending_events);
  tasklet_schedule(&host->tasklet);
 }

 if (test_bit(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events) ||
     test_bit(IMXMCI_PEND_DMA_DATA_b, &host->pending_events)) {
  atomic_inc(&host->stuck_timeout);
  if (atomic_read(&host->stuck_timeout) > 4)
   tasklet_schedule(&host->tasklet);
 } else {
  atomic_set(&host->stuck_timeout, 0);

 }

 mod_timer(&host->timer, jiffies + (HZ>>1));
}
