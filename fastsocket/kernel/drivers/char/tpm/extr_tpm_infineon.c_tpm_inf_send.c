
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tpm_chip {int dev; } ;


 int CMD ;
 int EIO ;
 int RESET_LP_IRQC_DISABLE ;
 int STAT_XFE ;
 size_t TPM_CTRL_DATA ;
 size_t TPM_VL_CHANNEL_TPM ;
 size_t TPM_VL_VER ;
 int dev_err (int ,char*) ;
 int empty_fifo (struct tpm_chip*,int) ;
 int tpm_data_out (int ,int ) ;
 int wait (struct tpm_chip*,int ) ;
 int wait_and_send (struct tpm_chip*,size_t) ;

__attribute__((used)) static int tpm_inf_send(struct tpm_chip *chip, u8 * buf, size_t count)
{
 int i;
 int ret;
 u8 count_high, count_low, count_4, count_3, count_2, count_1;


 tpm_data_out(RESET_LP_IRQC_DISABLE, CMD);

 ret = empty_fifo(chip, 1);
 if (ret) {
  dev_err(chip->dev, "Timeout while clearing FIFO\n");
  return -EIO;
 }

 ret = wait(chip, STAT_XFE);
 if (ret)
  return -EIO;

 count_4 = (count & 0xff000000) >> 24;
 count_3 = (count & 0x00ff0000) >> 16;
 count_2 = (count & 0x0000ff00) >> 8;
 count_1 = (count & 0x000000ff);
 count_high = ((count + 6) & 0xffffff00) >> 8;
 count_low = ((count + 6) & 0x000000ff);


 wait_and_send(chip, TPM_VL_VER);
 wait_and_send(chip, TPM_CTRL_DATA);
 wait_and_send(chip, count_high);
 wait_and_send(chip, count_low);


 wait_and_send(chip, TPM_VL_VER);
 wait_and_send(chip, TPM_VL_CHANNEL_TPM);
 wait_and_send(chip, count_4);
 wait_and_send(chip, count_3);
 wait_and_send(chip, count_2);
 wait_and_send(chip, count_1);


 for (i = 0; i < count; i++) {
  wait_and_send(chip, buf[i]);
 }
 return count;
}
