
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {struct mmc_command* cmd; struct mmc_data* data; } ;
struct mmc_data {int blocks; int flags; } ;
struct mmc_command {int opcode; int arg; } ;


 int CTL_ARG_REG ;
 int CTL_SD_CMD ;
 int CTL_STOP_INTERNAL_ACTION ;
 int DATA_PRESENT ;
 int EINVAL ;
 int MMC_DATA_READ ;





 int RESP_NONE ;
 int RESP_R1 ;
 int RESP_R1B ;
 int RESP_R2 ;
 int RESP_R3 ;
 int TMIO_MASK_CMD ;
 int TRANSFER_MULTI ;
 int TRANSFER_READ ;
 int enable_mmc_irqs (struct tmio_mmc_host*,int ) ;
 int mmc_resp_type (struct mmc_command*) ;
 int pr_debug (char*,int) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int sd_ctrl_write32 (struct tmio_mmc_host*,int ,int ) ;

__attribute__((used)) static int
tmio_mmc_start_command(struct tmio_mmc_host *host, struct mmc_command *cmd)
{
 struct mmc_data *data = host->data;
 int c = cmd->opcode;


 if (cmd->opcode == 12 && !cmd->arg) {
  sd_ctrl_write16(host, CTL_STOP_INTERNAL_ACTION, 0x001);
  return 0;
 }

 switch (mmc_resp_type(cmd)) {
 case 132: c |= RESP_NONE; break;
 case 131: c |= RESP_R1; break;
 case 130: c |= RESP_R1B; break;
 case 129: c |= RESP_R2; break;
 case 128: c |= RESP_R3; break;
 default:
  pr_debug("Unknown response type %d\n", mmc_resp_type(cmd));
  return -EINVAL;
 }

 host->cmd = cmd;






 if (data) {
  c |= DATA_PRESENT;
  if (data->blocks > 1) {
   sd_ctrl_write16(host, CTL_STOP_INTERNAL_ACTION, 0x100);
   c |= TRANSFER_MULTI;
  }
  if (data->flags & MMC_DATA_READ)
   c |= TRANSFER_READ;
 }

 enable_mmc_irqs(host, TMIO_MASK_CMD);


 sd_ctrl_write32(host, CTL_ARG_REG, cmd->arg);
 sd_ctrl_write16(host, CTL_SD_CMD, c);

 return 0;
}
