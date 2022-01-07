
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int use_spi_crc; } ;
struct mmc_command {int arg; int flags; int opcode; } ;


 int MMC_RSP_SPI_R1 ;
 int MMC_SPI_CRC_ON_OFF ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

int mmc_spi_set_crc(struct mmc_host *host, int use_crc)
{
 struct mmc_command cmd;
 int err;

 memset(&cmd, 0, sizeof(struct mmc_command));

 cmd.opcode = MMC_SPI_CRC_ON_OFF;
 cmd.flags = MMC_RSP_SPI_R1;
 cmd.arg = use_crc;

 err = mmc_wait_for_cmd(host, &cmd, 0);
 if (!err)
  host->use_spi_crc = use_crc;
 return err;
}
