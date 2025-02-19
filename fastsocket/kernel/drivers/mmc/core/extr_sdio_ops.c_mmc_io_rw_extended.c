
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct mmc_request {int arg; int flags; unsigned int blksz; unsigned int blocks; int sg_len; int error; int* resp; struct scatterlist* sg; int opcode; struct mmc_request* data; struct mmc_request* cmd; } ;
struct mmc_data {int arg; int flags; unsigned int blksz; unsigned int blocks; int sg_len; int error; int* resp; struct scatterlist* sg; int opcode; struct mmc_data* data; struct mmc_data* cmd; } ;
struct mmc_command {int arg; int flags; unsigned int blksz; unsigned int blocks; int sg_len; int error; int* resp; struct scatterlist* sg; int opcode; struct mmc_command* data; struct mmc_command* cmd; } ;
struct mmc_card {int host; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int EIO ;
 int ERANGE ;
 int MMC_CMD_ADTC ;
 int MMC_DATA_READ ;
 int MMC_DATA_WRITE ;
 int MMC_RSP_R5 ;
 int MMC_RSP_SPI_R5 ;
 int R5_ERROR ;
 int R5_FUNCTION_NUMBER ;
 int R5_OUT_OF_RANGE ;
 int SD_IO_RW_EXTENDED ;
 int WARN_ON (int) ;
 int memset (struct mmc_request*,int ,int) ;
 scalar_t__ mmc_host_is_spi (int ) ;
 int mmc_set_data_timeout (struct mmc_request*,struct mmc_card*) ;
 int mmc_wait_for_req (int ,struct mmc_request*) ;
 int sg_init_one (struct scatterlist*,int *,unsigned int) ;

int mmc_io_rw_extended(struct mmc_card *card, int write, unsigned fn,
 unsigned addr, int incr_addr, u8 *buf, unsigned blocks, unsigned blksz)
{
 struct mmc_request mrq;
 struct mmc_command cmd;
 struct mmc_data data;
 struct scatterlist sg;

 BUG_ON(!card);
 BUG_ON(fn > 7);
 BUG_ON(blocks == 1 && blksz > 512);
 WARN_ON(blocks == 0);
 WARN_ON(blksz == 0);


 if (addr & ~0x1FFFF)
  return -EINVAL;

 memset(&mrq, 0, sizeof(struct mmc_request));
 memset(&cmd, 0, sizeof(struct mmc_command));
 memset(&data, 0, sizeof(struct mmc_data));

 mrq.cmd = &cmd;
 mrq.data = &data;

 cmd.opcode = SD_IO_RW_EXTENDED;
 cmd.arg = write ? 0x80000000 : 0x00000000;
 cmd.arg |= fn << 28;
 cmd.arg |= incr_addr ? 0x04000000 : 0x00000000;
 cmd.arg |= addr << 9;
 if (blocks == 1 && blksz <= 512)
  cmd.arg |= (blksz == 512) ? 0 : blksz;
 else
  cmd.arg |= 0x08000000 | blocks;
 cmd.flags = MMC_RSP_SPI_R5 | MMC_RSP_R5 | MMC_CMD_ADTC;

 data.blksz = blksz;
 data.blocks = blocks;
 data.flags = write ? MMC_DATA_WRITE : MMC_DATA_READ;
 data.sg = &sg;
 data.sg_len = 1;

 sg_init_one(&sg, buf, blksz * blocks);

 mmc_set_data_timeout(&data, card);

 mmc_wait_for_req(card->host, &mrq);

 if (cmd.error)
  return cmd.error;
 if (data.error)
  return data.error;

 if (mmc_host_is_spi(card->host)) {

 } else {
  if (cmd.resp[0] & R5_ERROR)
   return -EIO;
  if (cmd.resp[0] & R5_FUNCTION_NUMBER)
   return -EINVAL;
  if (cmd.resp[0] & R5_OUT_OF_RANGE)
   return -ERANGE;
 }

 return 0;
}
