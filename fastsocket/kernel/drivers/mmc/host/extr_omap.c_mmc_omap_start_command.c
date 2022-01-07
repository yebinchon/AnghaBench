
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mmc_omap_host {int cmd_abort_timer; TYPE_2__* data; TYPE_1__* current_slot; int mmc; struct mmc_command* cmd; } ;
struct mmc_command {int opcode; int flags; int arg; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {scalar_t__ bus_mode; } ;


 int ARGH ;
 int ARGL ;
 int CMD ;
 int CTO ;
 int HZ ;
 int IE ;
 scalar_t__ MMC_BUSMODE_OPENDRAIN ;
 scalar_t__ MMC_CMD_ADTC ;
 scalar_t__ MMC_CMD_BC ;
 scalar_t__ MMC_CMD_BCR ;
 int MMC_DATA_WRITE ;
 int MMC_RSP_BUSY ;





 int OMAP_MMC_CMDTYPE_AC ;
 int OMAP_MMC_CMDTYPE_ADTC ;
 int OMAP_MMC_CMDTYPE_BC ;
 int OMAP_MMC_CMDTYPE_BCR ;
 int OMAP_MMC_STAT_A_EMPTY ;
 int OMAP_MMC_STAT_A_FULL ;
 int OMAP_MMC_STAT_CARD_ERR ;
 int OMAP_MMC_STAT_CMD_CRC ;
 int OMAP_MMC_STAT_CMD_TOUT ;
 int OMAP_MMC_STAT_DATA_CRC ;
 int OMAP_MMC_STAT_DATA_TOUT ;
 int OMAP_MMC_STAT_END_OF_CMD ;
 int OMAP_MMC_STAT_END_OF_DATA ;
 int OMAP_MMC_WRITE (struct mmc_omap_host*,int ,int) ;
 int dev_err (int ,char*,int) ;
 scalar_t__ jiffies ;
 scalar_t__ mmc_cmd_type (struct mmc_command*) ;
 int mmc_dev (int ) ;
 int mmc_resp_type (struct mmc_command*) ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void
mmc_omap_start_command(struct mmc_omap_host *host, struct mmc_command *cmd)
{
 u32 cmdreg;
 u32 resptype;
 u32 cmdtype;

 host->cmd = cmd;

 resptype = 0;
 cmdtype = 0;


 switch (mmc_resp_type(cmd)) {
 case 132:
  break;
 case 131:
 case 130:

  resptype = 1;
  break;
 case 129:
  resptype = 2;
  break;
 case 128:
  resptype = 3;
  break;
 default:
  dev_err(mmc_dev(host->mmc), "Invalid response type: %04x\n", mmc_resp_type(cmd));
  break;
 }

 if (mmc_cmd_type(cmd) == MMC_CMD_ADTC) {
  cmdtype = OMAP_MMC_CMDTYPE_ADTC;
 } else if (mmc_cmd_type(cmd) == MMC_CMD_BC) {
  cmdtype = OMAP_MMC_CMDTYPE_BC;
 } else if (mmc_cmd_type(cmd) == MMC_CMD_BCR) {
  cmdtype = OMAP_MMC_CMDTYPE_BCR;
 } else {
  cmdtype = OMAP_MMC_CMDTYPE_AC;
 }

 cmdreg = cmd->opcode | (resptype << 8) | (cmdtype << 12);

 if (host->current_slot->bus_mode == MMC_BUSMODE_OPENDRAIN)
  cmdreg |= 1 << 6;

 if (cmd->flags & MMC_RSP_BUSY)
  cmdreg |= 1 << 11;

 if (host->data && !(host->data->flags & MMC_DATA_WRITE))
  cmdreg |= 1 << 15;

 mod_timer(&host->cmd_abort_timer, jiffies + HZ/2);

 OMAP_MMC_WRITE(host, CTO, 200);
 OMAP_MMC_WRITE(host, ARGL, cmd->arg & 0xffff);
 OMAP_MMC_WRITE(host, ARGH, cmd->arg >> 16);
 OMAP_MMC_WRITE(host, IE,
         OMAP_MMC_STAT_A_EMPTY | OMAP_MMC_STAT_A_FULL |
         OMAP_MMC_STAT_CMD_CRC | OMAP_MMC_STAT_CMD_TOUT |
         OMAP_MMC_STAT_DATA_CRC | OMAP_MMC_STAT_DATA_TOUT |
         OMAP_MMC_STAT_END_OF_CMD | OMAP_MMC_STAT_CARD_ERR |
         OMAP_MMC_STAT_END_OF_DATA);
 OMAP_MMC_WRITE(host, CMD, cmdreg);
}
