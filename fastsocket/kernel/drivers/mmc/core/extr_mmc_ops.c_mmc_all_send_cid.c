
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct mmc_command {int flags; int resp; scalar_t__ arg; int opcode; } ;


 int BUG_ON (int) ;
 int MMC_ALL_SEND_CID ;
 int MMC_CMD_BCR ;
 int MMC_CMD_RETRIES ;
 int MMC_RSP_R2 ;
 int memcpy (int *,int ,int) ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

int mmc_all_send_cid(struct mmc_host *host, u32 *cid)
{
 int err;
 struct mmc_command cmd;

 BUG_ON(!host);
 BUG_ON(!cid);

 memset(&cmd, 0, sizeof(struct mmc_command));

 cmd.opcode = MMC_ALL_SEND_CID;
 cmd.arg = 0;
 cmd.flags = MMC_RSP_R2 | MMC_CMD_BCR;

 err = mmc_wait_for_cmd(host, &cmd, MMC_CMD_RETRIES);
 if (err)
  return err;

 memcpy(cid, cmd.resp, sizeof(u32) * 4);

 return 0;
}
