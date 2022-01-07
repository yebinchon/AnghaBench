
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int tag ;
struct TYPE_4__ {int len; } ;
struct mmc_spi_host {TYPE_3__* spi; TYPE_2__* data; TYPE_1__ t; } ;
struct mmc_command {int opcode; unsigned short* resp; int error; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int* status; } ;


 int EFAULT ;
 int EILSEQ ;
 int EINVAL ;
 int EIO ;
 int ENOSYS ;
 int ETIMEDOUT ;




 int R1_SPI_ADDRESS ;
 int R1_SPI_COM_CRC ;
 int R1_SPI_ERASE_RESET ;
 int R1_SPI_ERASE_SEQ ;
 int R1_SPI_ILLEGAL_COMMAND ;
 int R1_SPI_PARAMETER ;
 int dev_dbg (int *,char*,...) ;
 char* maptype (struct mmc_command*) ;
 int mmc_cs_off (struct mmc_spi_host*) ;
 int mmc_spi_readbytes (struct mmc_spi_host*,int) ;
 int mmc_spi_resp_type (struct mmc_command*) ;
 int mmc_spi_wait_unbusy (struct mmc_spi_host*,int ) ;
 int r1b_timeout ;
 int snprintf (char*,int,char*,int,char*) ;

__attribute__((used)) static int mmc_spi_response_get(struct mmc_spi_host *host,
  struct mmc_command *cmd, int cs_on)
{
 u8 *cp = host->data->status;
 u8 *end = cp + host->t.len;
 int value = 0;
 int bitshift;
 u8 leftover = 0;
 unsigned short rotator;
 int i;
 char tag[32];

 snprintf(tag, sizeof(tag), "  ... CMD%d response SPI_%s",
  cmd->opcode, maptype(cmd));







 cp += 8;
 while (cp < end && *cp == 0xff)
  cp++;


 if (cp == end) {
  cp = host->data->status;
  end = cp+1;
  for (i = 2; i < 16; i++) {
   value = mmc_spi_readbytes(host, 1);
   if (value < 0)
    goto done;
   if (*cp != 0xff)
    goto checkstatus;
  }
  value = -ETIMEDOUT;
  goto done;
 }

checkstatus:
 bitshift = 0;
 if (*cp & 0x80) {

  rotator = *cp++ << 8;

  if (cp == end) {
   value = mmc_spi_readbytes(host, 1);
   if (value < 0)
    goto done;
   cp = host->data->status;
   end = cp+1;
  }
  rotator |= *cp++;
  while (rotator & 0x8000) {
   bitshift++;
   rotator <<= 1;
  }
  cmd->resp[0] = rotator >> 8;
  leftover = rotator;
 } else {
  cmd->resp[0] = *cp++;
 }
 cmd->error = 0;


 if (cmd->resp[0] != 0) {
  if ((R1_SPI_PARAMETER | R1_SPI_ADDRESS)
    & cmd->resp[0])
   value = -EFAULT;
  else if (R1_SPI_ILLEGAL_COMMAND & cmd->resp[0])
   value = -ENOSYS;
  else if (R1_SPI_COM_CRC & cmd->resp[0])
   value = -EILSEQ;
  else if ((R1_SPI_ERASE_SEQ | R1_SPI_ERASE_RESET)
    & cmd->resp[0])
   value = -EIO;

 }

 switch (mmc_spi_resp_type(cmd)) {




 case 130:

  while (cp < end && *cp == 0)
   cp++;
  if (cp == end)
   mmc_spi_wait_unbusy(host, r1b_timeout);
  break;




 case 129:

  if (cp == end) {
   value = mmc_spi_readbytes(host, 1);
   if (value < 0)
    goto done;
   cp = host->data->status;
   end = cp+1;
  }
  if (bitshift) {
   rotator = leftover << 8;
   rotator |= *cp << bitshift;
   cmd->resp[0] |= (rotator & 0xFF00);
  } else {
   cmd->resp[0] |= *cp << 8;
  }
  break;


 case 128:
  rotator = leftover << 8;
  cmd->resp[1] = 0;
  for (i = 0; i < 4; i++) {
   cmd->resp[1] <<= 8;

   if (cp == end) {
    value = mmc_spi_readbytes(host, 1);
    if (value < 0)
     goto done;
    cp = host->data->status;
    end = cp+1;
   }
   if (bitshift) {
    rotator |= *cp++ << bitshift;
    cmd->resp[1] |= (rotator >> 8);
    rotator <<= 8;
   } else {
    cmd->resp[1] |= *cp++;
   }
  }
  break;


 case 131:
  break;

 default:
  dev_dbg(&host->spi->dev, "bad response type %04x\n",
    mmc_spi_resp_type(cmd));
  if (value >= 0)
   value = -EINVAL;
  goto done;
 }

 if (value < 0)
  dev_dbg(&host->spi->dev, "%s: resp %04x %08x\n",
   tag, cmd->resp[0], cmd->resp[1]);


 if (value >= 0 && cs_on)
  return value;
done:
 if (value < 0)
  cmd->error = value;
 mmc_cs_off(host);
 return value;
}
