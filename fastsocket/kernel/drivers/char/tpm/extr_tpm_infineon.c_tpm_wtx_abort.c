
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;


 int TPM_CTRL_WTX_ABORT ;
 int TPM_VL_VER ;
 int TPM_WTX_MSLEEP_TIME ;
 int dev_info (int ,char*) ;
 int msleep (int ) ;
 scalar_t__ number_of_wtx ;
 int wait_and_send (struct tpm_chip*,int) ;

__attribute__((used)) static void tpm_wtx_abort(struct tpm_chip *chip)
{
 dev_info(chip->dev, "Aborting WTX\n");
 wait_and_send(chip, TPM_VL_VER);
 wait_and_send(chip, TPM_CTRL_WTX_ABORT);
 wait_and_send(chip, 0x00);
 wait_and_send(chip, 0x00);
 number_of_wtx = 0;
 msleep(TPM_WTX_MSLEEP_TIME);
}
