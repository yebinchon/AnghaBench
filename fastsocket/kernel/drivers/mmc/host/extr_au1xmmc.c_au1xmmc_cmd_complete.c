
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_command {int flags; int* resp; int error; } ;
struct au1xmmc_host {int flags; int status; int finish_task; scalar_t__ iobase; struct mmc_request* mrq; } ;


 int DMA_CHANNEL (struct au1xmmc_host*) ;
 int EILSEQ ;
 int HOST_F_DMA ;
 int HOST_F_RECV ;
 int HOST_F_XMIT ;
 scalar_t__ HOST_STATUS (struct au1xmmc_host*) ;
 int HOST_S_DATA ;
 int IRQ_OFF (struct au1xmmc_host*,int) ;
 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 int SD_CONFIG_RA ;
 int SD_CONFIG_RF ;
 int SD_CONFIG_TH ;
 scalar_t__ SD_RESP0 ;
 scalar_t__ SD_RESP1 ;
 scalar_t__ SD_RESP2 ;
 scalar_t__ SD_RESP3 ;
 int SD_STATUS_DB ;
 int SD_STATUS_NE ;
 int SD_STATUS_RC ;
 int SD_STATUS_SC ;
 int SD_STATUS_WC ;
 int au1xxx_dbdma_start (int) ;
 void* au_readl (scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void au1xmmc_cmd_complete(struct au1xmmc_host *host, u32 status)
{
 struct mmc_request *mrq = host->mrq;
 struct mmc_command *cmd;
 u32 r[4];
 int i, trans;

 if (!host->mrq)
  return;

 cmd = mrq->cmd;
 cmd->error = 0;

 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {
   r[0] = au_readl(host->iobase + SD_RESP3);
   r[1] = au_readl(host->iobase + SD_RESP2);
   r[2] = au_readl(host->iobase + SD_RESP1);
   r[3] = au_readl(host->iobase + SD_RESP0);





   for (i = 0; i < 4; i++) {
    cmd->resp[i] = (r[i] & 0x00FFFFFF) << 8;
    if (i != 3)
     cmd->resp[i] |= (r[i + 1] & 0xFF000000) >> 24;
   }
  } else {







   cmd->resp[0] = au_readl(host->iobase + SD_RESP0);
  }
 }


 if (status & (SD_STATUS_SC | SD_STATUS_WC | SD_STATUS_RC))
  cmd->error = -EILSEQ;

 trans = host->flags & (HOST_F_XMIT | HOST_F_RECV);

 if (!trans || cmd->error) {
  IRQ_OFF(host, SD_CONFIG_TH | SD_CONFIG_RA | SD_CONFIG_RF);
  tasklet_schedule(&host->finish_task);
  return;
 }

 host->status = HOST_S_DATA;

 if (host->flags & HOST_F_DMA) {
 }
}
