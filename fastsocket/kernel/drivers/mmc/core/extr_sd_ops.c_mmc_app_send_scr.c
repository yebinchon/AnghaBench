
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
struct mmc_request {int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; scalar_t__ arg; int opcode; struct mmc_request* data; struct mmc_request* cmd; } ;
struct mmc_data {int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; scalar_t__ arg; int opcode; struct mmc_data* data; struct mmc_data* cmd; } ;
struct mmc_command {int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; scalar_t__ arg; int opcode; struct mmc_command* data; struct mmc_command* cmd; } ;
struct mmc_card {int host; } ;


 int BUG_ON (int) ;
 int MMC_CMD_ADTC ;
 int MMC_DATA_READ ;
 int MMC_RSP_R1 ;
 int MMC_RSP_SPI_R1 ;
 int SD_APP_SEND_SCR ;
 int be32_to_cpu (int ) ;
 int memset (struct mmc_request*,int ,int) ;
 int mmc_app_cmd (int ,struct mmc_card*) ;
 int mmc_set_data_timeout (struct mmc_request*,struct mmc_card*) ;
 int mmc_wait_for_req (int ,struct mmc_request*) ;
 int sg_init_one (struct scatterlist*,int *,int) ;

int mmc_app_send_scr(struct mmc_card *card, u32 *scr)
{
 int err;
 struct mmc_request mrq;
 struct mmc_command cmd;
 struct mmc_data data;
 struct scatterlist sg;

 BUG_ON(!card);
 BUG_ON(!card->host);
 BUG_ON(!scr);



 err = mmc_app_cmd(card->host, card);
 if (err)
  return err;

 memset(&mrq, 0, sizeof(struct mmc_request));
 memset(&cmd, 0, sizeof(struct mmc_command));
 memset(&data, 0, sizeof(struct mmc_data));

 mrq.cmd = &cmd;
 mrq.data = &data;

 cmd.opcode = SD_APP_SEND_SCR;
 cmd.arg = 0;
 cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_ADTC;

 data.blksz = 8;
 data.blocks = 1;
 data.flags = MMC_DATA_READ;
 data.sg = &sg;
 data.sg_len = 1;

 sg_init_one(&sg, scr, 8);

 mmc_set_data_timeout(&data, card);

 mmc_wait_for_req(card->host, &mrq);

 if (cmd.error)
  return cmd.error;
 if (data.error)
  return data.error;

 scr[0] = be32_to_cpu(scr[0]);
 scr[1] = be32_to_cpu(scr[1]);

 return 0;
}
