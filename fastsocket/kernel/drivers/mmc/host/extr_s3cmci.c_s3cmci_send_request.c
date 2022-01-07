
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct s3cmci_host {int dcnt; scalar_t__ base; scalar_t__ cmd_is_stop; int ccnt; struct mmc_request* mrq; } ;
struct mmc_request {struct mmc_command* cmd; struct mmc_command* stop; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {int error; TYPE_1__* data; } ;
struct TYPE_4__ {int error; } ;


 scalar_t__ S3C2410_SDICMDSTAT ;
 scalar_t__ S3C2410_SDIDSTA ;
 scalar_t__ S3C2410_SDIFSTA ;
 int dbg (struct s3cmci_host*,int ,char*,int) ;
 int dbg_err ;
 struct s3cmci_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int prepare_dbgmsg (struct s3cmci_host*,struct mmc_command*,scalar_t__) ;
 int s3cmci_enable_irq (struct s3cmci_host*,int) ;
 scalar_t__ s3cmci_host_usedma (struct s3cmci_host*) ;
 int s3cmci_prepare_dma (struct s3cmci_host*,TYPE_1__*) ;
 int s3cmci_prepare_pio (struct s3cmci_host*,TYPE_1__*) ;
 int s3cmci_send_command (struct s3cmci_host*,struct mmc_command*) ;
 int s3cmci_setup_data (struct s3cmci_host*,TYPE_1__*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s3cmci_send_request(struct mmc_host *mmc)
{
 struct s3cmci_host *host = mmc_priv(mmc);
 struct mmc_request *mrq = host->mrq;
 struct mmc_command *cmd = host->cmd_is_stop ? mrq->stop : mrq->cmd;

 host->ccnt++;
 prepare_dbgmsg(host, cmd, host->cmd_is_stop);




 writel(0xFFFFFFFF, host->base + S3C2410_SDICMDSTAT);
 writel(0xFFFFFFFF, host->base + S3C2410_SDIDSTA);
 writel(0xFFFFFFFF, host->base + S3C2410_SDIFSTA);

 if (cmd->data) {
  int res = s3cmci_setup_data(host, cmd->data);

  host->dcnt++;

  if (res) {
   dbg(host, dbg_err, "setup data error %d\n", res);
   cmd->error = res;
   cmd->data->error = res;

   mmc_request_done(mmc, mrq);
   return;
  }

  if (s3cmci_host_usedma(host))
   res = s3cmci_prepare_dma(host, cmd->data);
  else
   res = s3cmci_prepare_pio(host, cmd->data);

  if (res) {
   dbg(host, dbg_err, "data prepare error %d\n", res);
   cmd->error = res;
   cmd->data->error = res;

   mmc_request_done(mmc, mrq);
   return;
  }
 }


 s3cmci_send_command(host, cmd);


 s3cmci_enable_irq(host, 1);
}
