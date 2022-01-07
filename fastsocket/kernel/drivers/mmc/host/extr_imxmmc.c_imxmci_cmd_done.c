
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_request {TYPE_1__* data; } ;
struct mmc_data {int dummy; } ;
struct mmc_command {int flags; int* resp; int error; } ;
struct imxmci_host {int mmc; struct mmc_request* req; int dma; int pending_events; scalar_t__ base; struct mmc_command* cmd; struct mmc_data* data; } ;
struct TYPE_2__ {int flags; } ;


 int EILSEQ ;
 int EIO ;
 int ETIMEDOUT ;
 int IMXMCI_PEND_DMA_DATA_b ;
 int MMC_DATA_WRITE ;
 scalar_t__ MMC_REG_RES_FIFO ;
 scalar_t__ MMC_REG_STATUS ;
 int MMC_RSP_136 ;
 int MMC_RSP_CRC ;
 int MMC_RSP_PRESENT ;
 int STATUS_APPL_BUFF_FE ;
 unsigned int STATUS_ERR_MASK ;
 unsigned int STATUS_RESP_CRC_ERR ;
 unsigned int STATUS_TIME_OUT_RESP ;
 int dev_dbg (int ,char*,...) ;
 int dev_warn (int ,char*,...) ;
 int imx_dma_enable (int ) ;
 scalar_t__ imxmci_busy_wait_for_status (struct imxmci_host*,unsigned int*,int ,int,char*) ;
 int imxmci_finish_data (struct imxmci_host*,unsigned int) ;
 int imxmci_finish_request (struct imxmci_host*,struct mmc_request*) ;
 int imxmci_stop_clock (struct imxmci_host*) ;
 int mmc_dev (int ) ;
 void* readw (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int imxmci_cmd_done(struct imxmci_host *host, unsigned int stat)
{
 struct mmc_command *cmd = host->cmd;
 int i;
 u32 a, b, c;
 struct mmc_data *data = host->data;

 if (!cmd)
  return 0;

 host->cmd = ((void*)0);

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

 dev_dbg(mmc_dev(host->mmc), "RESP 0x%08x, 0x%08x, 0x%08x, 0x%08x, error %d\n",
  cmd->resp[0], cmd->resp[1], cmd->resp[2], cmd->resp[3], cmd->error);

 if (data && !cmd->error && !(stat & STATUS_ERR_MASK)) {
  if (host->req->data->flags & MMC_DATA_WRITE) {



   stat = readw(host->base + MMC_REG_STATUS);
   if (imxmci_busy_wait_for_status(host, &stat,
       STATUS_APPL_BUFF_FE,
       40, "imxmci_cmd_done DMA WR") < 0) {
    cmd->error = -EIO;
    imxmci_finish_data(host, stat);
    if (host->req)
     imxmci_finish_request(host, host->req);
    dev_warn(mmc_dev(host->mmc), "STATUS = 0x%04x\n",
      stat);
    return 0;
   }

   if (test_bit(IMXMCI_PEND_DMA_DATA_b, &host->pending_events))
    imx_dma_enable(host->dma);
  }
 } else {
  struct mmc_request *req;
  imxmci_stop_clock(host);
  req = host->req;

  if (data)
   imxmci_finish_data(host, stat);

  if (req)
   imxmci_finish_request(host, req);
  else
   dev_warn(mmc_dev(host->mmc), "imxmci_cmd_done: no request to finish\n");
 }

 return 1;
}
