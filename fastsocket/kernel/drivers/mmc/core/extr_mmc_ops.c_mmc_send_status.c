
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_command {int arg; int flags; int * resp; int opcode; } ;
struct mmc_card {int rca; int host; } ;


 int BUG_ON (int) ;
 int MMC_CMD_AC ;
 int MMC_CMD_RETRIES ;
 int MMC_RSP_R1 ;
 int MMC_RSP_SPI_R2 ;
 int MMC_SEND_STATUS ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_host_is_spi (int ) ;
 int mmc_wait_for_cmd (int ,struct mmc_command*,int ) ;

int mmc_send_status(struct mmc_card *card, u32 *status)
{
 int err;
 struct mmc_command cmd;

 BUG_ON(!card);
 BUG_ON(!card->host);

 memset(&cmd, 0, sizeof(struct mmc_command));

 cmd.opcode = MMC_SEND_STATUS;
 if (!mmc_host_is_spi(card->host))
  cmd.arg = card->rca << 16;
 cmd.flags = MMC_RSP_SPI_R2 | MMC_RSP_R1 | MMC_CMD_AC;

 err = mmc_wait_for_cmd(card->host, &cmd, MMC_CMD_RETRIES);
 if (err)
  return err;




 if (status)
  *status = cmd.resp[0];

 return 0;
}
