
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {int cmd; TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct imxmci_host {struct mmc_request* req; } ;
struct TYPE_2__ {int flags; } ;


 unsigned int CMD_DAT_CONT_DATA_ENABLE ;
 unsigned int CMD_DAT_CONT_STREAM_BLOCK ;
 unsigned int CMD_DAT_CONT_WRITE ;
 int MMC_DATA_STREAM ;
 int MMC_DATA_WRITE ;
 int WARN_ON (int ) ;
 int imxmci_setup_data (struct imxmci_host*,TYPE_1__*) ;
 int imxmci_start_cmd (struct imxmci_host*,int ,unsigned int) ;
 struct imxmci_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void imxmci_request(struct mmc_host *mmc, struct mmc_request *req)
{
 struct imxmci_host *host = mmc_priv(mmc);
 unsigned int cmdat;

 WARN_ON(host->req != ((void*)0));

 host->req = req;

 cmdat = 0;

 if (req->data) {
  imxmci_setup_data(host, req->data);

  cmdat |= CMD_DAT_CONT_DATA_ENABLE;

  if (req->data->flags & MMC_DATA_WRITE)
   cmdat |= CMD_DAT_CONT_WRITE;

  if (req->data->flags & MMC_DATA_STREAM)
   cmdat |= CMD_DAT_CONT_STREAM_BLOCK;
 }

 imxmci_start_cmd(host, req->cmd, cmdat);
}
