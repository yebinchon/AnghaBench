
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct mmc_command {int flags; int* resp; scalar_t__ arg; int opcode; } ;


 int BUG_ON (int) ;
 int MMC_CMD_BCR ;
 int MMC_CMD_RETRIES ;
 int MMC_RSP_R6 ;
 int SD_SEND_RELATIVE_ADDR ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

int mmc_send_relative_addr(struct mmc_host *host, unsigned int *rca)
{
 int err;
 struct mmc_command cmd;

 BUG_ON(!host);
 BUG_ON(!rca);

 memset(&cmd, 0, sizeof(struct mmc_command));

 cmd.opcode = SD_SEND_RELATIVE_ADDR;
 cmd.arg = 0;
 cmd.flags = MMC_RSP_R6 | MMC_CMD_BCR;

 err = mmc_wait_for_cmd(host, &cmd, MMC_CMD_RETRIES);
 if (err)
  return err;

 *rca = cmd.resp[0] >> 16;

 return 0;
}
