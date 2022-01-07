
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {TYPE_1__* cmd; int data; } ;
struct mmc_host {int dummy; } ;
struct au1xmmc_host {scalar_t__ status; struct mmc_request* mrq; } ;
struct TYPE_2__ {int error; } ;


 int ENOMEDIUM ;
 int FLUSH_FIFO (struct au1xmmc_host*) ;
 scalar_t__ HOST_S_CMD ;
 scalar_t__ HOST_S_IDLE ;
 int WARN_ON (int) ;
 scalar_t__ au1xmmc_card_inserted (struct mmc_host*) ;
 int au1xmmc_finish_request (struct au1xmmc_host*) ;
 int au1xmmc_prepare_data (struct au1xmmc_host*,int ) ;
 int au1xmmc_send_command (struct au1xmmc_host*,int ,TYPE_1__*,int ) ;
 int irqs_disabled () ;
 struct au1xmmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void au1xmmc_request(struct mmc_host* mmc, struct mmc_request* mrq)
{
 struct au1xmmc_host *host = mmc_priv(mmc);
 int ret = 0;

 WARN_ON(irqs_disabled());
 WARN_ON(host->status != HOST_S_IDLE);

 host->mrq = mrq;
 host->status = HOST_S_CMD;


 if (0 == au1xmmc_card_inserted(mmc)) {
  mrq->cmd->error = -ENOMEDIUM;
  au1xmmc_finish_request(host);
  return;
 }

 if (mrq->data) {
  FLUSH_FIFO(host);
  ret = au1xmmc_prepare_data(host, mrq->data);
 }

 if (!ret)
  ret = au1xmmc_send_command(host, 0, mrq->cmd, mrq->data);

 if (ret) {
  mrq->cmd->error = ret;
  au1xmmc_finish_request(host);
 }
}
