
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct mmc_command {int arg; int * resp; int flags; int opcode; } ;


 int MMC_RSP_SPI_R3 ;
 int MMC_SPI_READ_OCR ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

int mmc_spi_read_ocr(struct mmc_host *host, int highcap, u32 *ocrp)
{
 struct mmc_command cmd;
 int err;

 memset(&cmd, 0, sizeof(struct mmc_command));

 cmd.opcode = MMC_SPI_READ_OCR;
 cmd.arg = highcap ? (1 << 30) : 0;
 cmd.flags = MMC_RSP_SPI_R3;

 err = mmc_wait_for_cmd(host, &cmd, 0);

 *ocrp = cmd.resp[1];
 return err;
}
