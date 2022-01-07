
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {scalar_t__ base; int mmc; struct mmc_command* cmd; } ;
struct mmc_command {int error; unsigned int opcode; int arg; } ;


 unsigned int CMD_DAT_CONT_RESPONSE_136BIT ;
 unsigned int CMD_DAT_CONT_RESPONSE_48BIT ;
 unsigned int CMD_DAT_CONT_RESPONSE_48BIT_CRC ;
 int EINVAL ;
 int INT_END_CMD_RES_EN ;
 int INT_READ_OP_EN ;
 int INT_WRITE_OP_DONE_EN ;
 scalar_t__ MMC_REG_ARG ;
 scalar_t__ MMC_REG_CMD ;
 scalar_t__ MMC_REG_CMD_DAT_CONT ;
 scalar_t__ MMC_REG_INT_CNTR ;





 int WARN_ON (int ) ;
 int dev_err (int ,char*,int) ;
 int mmc_dev (int ) ;
 int mmc_resp_type (struct mmc_command*) ;
 scalar_t__ mxcmci_use_dma (struct mxcmci_host*) ;
 int writel (int,scalar_t__) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int mxcmci_start_cmd(struct mxcmci_host *host, struct mmc_command *cmd,
  unsigned int cmdat)
{
 WARN_ON(host->cmd != ((void*)0));
 host->cmd = cmd;

 switch (mmc_resp_type(cmd)) {
 case 131:
 case 130:
  cmdat |= CMD_DAT_CONT_RESPONSE_48BIT_CRC;
  break;
 case 129:
  cmdat |= CMD_DAT_CONT_RESPONSE_136BIT;
  break;
 case 128:
  cmdat |= CMD_DAT_CONT_RESPONSE_48BIT;
  break;
 case 132:
  break;
 default:
  dev_err(mmc_dev(host->mmc), "unhandled response type 0x%x\n",
    mmc_resp_type(cmd));
  cmd->error = -EINVAL;
  return -EINVAL;
 }

 if (mxcmci_use_dma(host))
  writel(INT_READ_OP_EN | INT_WRITE_OP_DONE_EN |
    INT_END_CMD_RES_EN,
    host->base + MMC_REG_INT_CNTR);
 else
  writel(INT_END_CMD_RES_EN, host->base + MMC_REG_INT_CNTR);

 writew(cmd->opcode, host->base + MMC_REG_CMD);
 writel(cmd->arg, host->base + MMC_REG_ARG);
 writew(cmdat, host->base + MMC_REG_CMD_DAT_CONT);

 return 0;
}
