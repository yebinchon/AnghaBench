
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct mmc_request {int arg; int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; int opcode; struct mmc_request* data; struct mmc_request* cmd; } ;
struct mmc_data {int arg; int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; int opcode; struct mmc_data* data; struct mmc_data* cmd; } ;
struct mmc_command {int arg; int flags; int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; int opcode; struct mmc_command* data; struct mmc_command* cmd; } ;
struct mmc_card {int host; } ;


 int BUG_ON (int) ;
 int MMC_CMD_ADTC ;
 int MMC_DATA_READ ;
 int MMC_RSP_R1 ;
 int MMC_RSP_SPI_R1 ;
 int SD_SWITCH ;
 int memset (struct mmc_request*,int ,int) ;
 int mmc_set_data_timeout (struct mmc_request*,struct mmc_card*) ;
 int mmc_wait_for_req (int ,struct mmc_request*) ;
 int sg_init_one (struct scatterlist*,int*,int) ;

int mmc_sd_switch(struct mmc_card *card, int mode, int group,
 u8 value, u8 *resp)
{
 struct mmc_request mrq;
 struct mmc_command cmd;
 struct mmc_data data;
 struct scatterlist sg;

 BUG_ON(!card);
 BUG_ON(!card->host);



 mode = !!mode;
 value &= 0xF;

 memset(&mrq, 0, sizeof(struct mmc_request));
 memset(&cmd, 0, sizeof(struct mmc_command));
 memset(&data, 0, sizeof(struct mmc_data));

 mrq.cmd = &cmd;
 mrq.data = &data;

 cmd.opcode = SD_SWITCH;
 cmd.arg = mode << 31 | 0x00FFFFFF;
 cmd.arg &= ~(0xF << (group * 4));
 cmd.arg |= value << (group * 4);
 cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_ADTC;

 data.blksz = 64;
 data.blocks = 1;
 data.flags = MMC_DATA_READ;
 data.sg = &sg;
 data.sg_len = 1;

 sg_init_one(&sg, resp, 64);

 mmc_set_data_timeout(&data, card);

 mmc_wait_for_req(card->host, &mrq);

 if (cmd.error)
  return cmd.error;
 if (data.error)
  return data.error;

 return 0;
}
