
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxcmci_host {scalar_t__ base; int mmc; struct mmc_command* cmd; } ;
struct mmc_command {int flags; int* resp; int error; } ;


 int EILSEQ ;
 int ETIMEDOUT ;
 scalar_t__ MMC_REG_RES_FIFO ;
 int MMC_RSP_136 ;
 int MMC_RSP_CRC ;
 int MMC_RSP_PRESENT ;
 unsigned int STATUS_RESP_CRC_ERR ;
 unsigned int STATUS_TIME_OUT_RESP ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 int readw (scalar_t__) ;

__attribute__((used)) static void mxcmci_read_response(struct mxcmci_host *host, unsigned int stat)
{
 struct mmc_command *cmd = host->cmd;
 int i;
 u32 a, b, c;

 if (!cmd)
  return;

 if (stat & STATUS_TIME_OUT_RESP) {
  dev_dbg(mmc_dev(host->mmc), "CMD TIMEOUT\n");
  cmd->error = -ETIMEDOUT;
 } else if (stat & STATUS_RESP_CRC_ERR && cmd->flags & MMC_RSP_CRC) {
  dev_dbg(mmc_dev(host->mmc), "cmd crc error\n");
  cmd->error = -EILSEQ;
 }

 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {
   for (i = 0; i < 4; i++) {
    a = readw(host->base + MMC_REG_RES_FIFO);
    b = readw(host->base + MMC_REG_RES_FIFO);
    cmd->resp[i] = a << 16 | b;
   }
  } else {
   a = readw(host->base + MMC_REG_RES_FIFO);
   b = readw(host->base + MMC_REG_RES_FIFO);
   c = readw(host->base + MMC_REG_RES_FIFO);
   cmd->resp[0] = a << 24 | b << 8 | c >> 8;
  }
 }
}
