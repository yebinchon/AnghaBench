
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int caps; struct mmc_card* card; } ;
struct mmc_command {int arg; int flags; int opcode; } ;
struct TYPE_2__ {int sa_timeout; } ;
struct mmc_card {int rca; TYPE_1__ ext_csd; } ;


 int DIV_ROUND_UP (int ,int) ;
 int MMC_CAP_WAIT_WHILE_BUSY ;
 int MMC_CMD_AC ;
 int MMC_RSP_R1B ;
 int MMC_SLEEP_AWAKE ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_delay (int ) ;
 int mmc_deselect_cards (struct mmc_host*) ;
 int mmc_select_card (struct mmc_card*) ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

int mmc_card_sleepawake(struct mmc_host *host, int sleep)
{
 struct mmc_command cmd;
 struct mmc_card *card = host->card;
 int err;

 if (sleep)
  mmc_deselect_cards(host);

 memset(&cmd, 0, sizeof(struct mmc_command));

 cmd.opcode = MMC_SLEEP_AWAKE;
 cmd.arg = card->rca << 16;
 if (sleep)
  cmd.arg |= 1 << 15;

 cmd.flags = MMC_RSP_R1B | MMC_CMD_AC;
 err = mmc_wait_for_cmd(host, &cmd, 0);
 if (err)
  return err;







 if (!(host->caps & MMC_CAP_WAIT_WHILE_BUSY))
  mmc_delay(DIV_ROUND_UP(card->ext_csd.sa_timeout, 10000));

 if (!sleep)
  err = mmc_select_card(card);

 return err;
}
