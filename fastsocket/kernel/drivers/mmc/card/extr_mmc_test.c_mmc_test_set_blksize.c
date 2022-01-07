
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_command {unsigned int arg; int flags; int opcode; } ;
struct TYPE_2__ {int host; } ;


 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int MMC_SET_BLOCKLEN ;
 int mmc_wait_for_cmd (int ,struct mmc_command*,int ) ;

__attribute__((used)) static int mmc_test_set_blksize(struct mmc_test_card *test, unsigned size)
{
 struct mmc_command cmd;
 int ret;

 cmd.opcode = MMC_SET_BLOCKLEN;
 cmd.arg = size;
 cmd.flags = MMC_RSP_R1 | MMC_CMD_AC;
 ret = mmc_wait_for_cmd(test->card->host, &cmd, 0);
 if (ret)
  return ret;

 return 0;
}
