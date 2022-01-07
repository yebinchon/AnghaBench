
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {TYPE_1__* data; struct mmc_command* cmd; } ;
struct mmc_command {int* resp; int flags; int error; } ;
struct TYPE_2__ {int flags; } ;


 int CTL_RESPONSE ;
 int EILSEQ ;
 int ETIMEDOUT ;
 int MMC_DATA_READ ;
 int MMC_RSP_136 ;
 int MMC_RSP_CRC ;
 int MMC_RSP_R3 ;
 int TMIO_MASK_READOP ;
 int TMIO_MASK_WRITEOP ;
 unsigned int TMIO_STAT_CMDTIMEOUT ;
 unsigned int TMIO_STAT_CRCFAIL ;
 int enable_mmc_irqs (struct tmio_mmc_host*,int ) ;
 int pr_debug (char*) ;
 int sd_ctrl_read32 (struct tmio_mmc_host*,int) ;
 int tmio_mmc_finish_request (struct tmio_mmc_host*) ;

__attribute__((used)) static inline void tmio_mmc_cmd_irq(struct tmio_mmc_host *host,
 unsigned int stat)
{
 struct mmc_command *cmd = host->cmd;
 int i, addr;

 if (!host->cmd) {
  pr_debug("Spurious CMD irq\n");
  return;
 }

 host->cmd = ((void*)0);






 for (i = 3, addr = CTL_RESPONSE ; i >= 0 ; i--, addr += 4)
  cmd->resp[i] = sd_ctrl_read32(host, addr);

 if (cmd->flags & MMC_RSP_136) {
  cmd->resp[0] = (cmd->resp[0] << 8) | (cmd->resp[1] >> 24);
  cmd->resp[1] = (cmd->resp[1] << 8) | (cmd->resp[2] >> 24);
  cmd->resp[2] = (cmd->resp[2] << 8) | (cmd->resp[3] >> 24);
  cmd->resp[3] <<= 8;
 } else if (cmd->flags & MMC_RSP_R3) {
  cmd->resp[0] = cmd->resp[3];
 }

 if (stat & TMIO_STAT_CMDTIMEOUT)
  cmd->error = -ETIMEDOUT;
 else if (stat & TMIO_STAT_CRCFAIL && cmd->flags & MMC_RSP_CRC)
  cmd->error = -EILSEQ;





 if (host->data && !cmd->error) {
  if (host->data->flags & MMC_DATA_READ)
   enable_mmc_irqs(host, TMIO_MASK_READOP);
  else
   enable_mmc_irqs(host, TMIO_MASK_WRITEOP);
 } else {
  tmio_mmc_finish_request(host);
 }

 return;
}
