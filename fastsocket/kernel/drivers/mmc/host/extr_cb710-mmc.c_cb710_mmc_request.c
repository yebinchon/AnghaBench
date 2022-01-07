
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {TYPE_1__* cmd; TYPE_1__* stop; } ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int finish_req_tasklet; struct mmc_request* mrq; } ;
struct TYPE_2__ {int error; } ;


 int CB710_MMC_IE_TEST_MASK ;
 int ENOMEDIUM ;
 int WARN_ON (int ) ;
 int cb710_mmc_command (struct mmc_host*,TYPE_1__*) ;
 int cb710_mmc_enable_irq (struct cb710_slot*,int ,int ) ;
 scalar_t__ cb710_mmc_is_card_inserted (struct cb710_slot*) ;
 struct cb710_slot* cb710_mmc_to_slot (struct mmc_host*) ;
 int mdelay (int) ;
 struct cb710_mmc_reader* mmc_priv (struct mmc_host*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void cb710_mmc_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct cb710_slot *slot = cb710_mmc_to_slot(mmc);
 struct cb710_mmc_reader *reader = mmc_priv(mmc);

 WARN_ON(reader->mrq != ((void*)0));

 reader->mrq = mrq;
 cb710_mmc_enable_irq(slot, CB710_MMC_IE_TEST_MASK, 0);

 if (cb710_mmc_is_card_inserted(slot)) {
  if (!cb710_mmc_command(mmc, mrq->cmd) && mrq->stop)
   cb710_mmc_command(mmc, mrq->stop);
  mdelay(1);
 } else {
  mrq->cmd->error = -ENOMEDIUM;
 }

 tasklet_schedule(&reader->finish_req_tasklet);
}
