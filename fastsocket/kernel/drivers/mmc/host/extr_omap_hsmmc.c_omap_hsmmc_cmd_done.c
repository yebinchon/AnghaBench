
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int mmc; int * mrq; int response_busy; int * data; int base; int * cmd; } ;
struct mmc_command {int flags; int mrq; scalar_t__ error; void** resp; } ;


 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 void* OMAP_HSMMC_READ (int ,int ) ;
 int RSP10 ;
 int RSP32 ;
 int RSP54 ;
 int RSP76 ;
 int mmc_request_done (int ,int ) ;

__attribute__((used)) static void
omap_hsmmc_cmd_done(struct omap_hsmmc_host *host, struct mmc_command *cmd)
{
 host->cmd = ((void*)0);

 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {

   cmd->resp[3] = OMAP_HSMMC_READ(host->base, RSP10);
   cmd->resp[2] = OMAP_HSMMC_READ(host->base, RSP32);
   cmd->resp[1] = OMAP_HSMMC_READ(host->base, RSP54);
   cmd->resp[0] = OMAP_HSMMC_READ(host->base, RSP76);
  } else {

   cmd->resp[0] = OMAP_HSMMC_READ(host->base, RSP10);
  }
 }
 if ((host->data == ((void*)0) && !host->response_busy) || cmd->error) {
  host->mrq = ((void*)0);
  mmc_request_done(host->mmc, cmd->mrq);
 }
}
