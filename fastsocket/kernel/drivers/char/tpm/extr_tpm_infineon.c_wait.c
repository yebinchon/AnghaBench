
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;


 int EIO ;
 int STAT ;
 int STAT_RDA ;
 int STAT_XFE ;
 int TPM_MAX_TRIES ;
 int TPM_MSLEEP_TIME ;
 int dev_err (int ,char*) ;
 int msleep (int ) ;
 int tpm_data_in (int ) ;

__attribute__((used)) static int wait(struct tpm_chip *chip, int wait_for_bit)
{
 int status;
 int i;
 for (i = 0; i < TPM_MAX_TRIES; i++) {
  status = tpm_data_in(STAT);

  if (status & 1 << wait_for_bit)
   break;
  msleep(TPM_MSLEEP_TIME);
 }
 if (i == TPM_MAX_TRIES) {
  if (wait_for_bit == STAT_XFE)
   dev_err(chip->dev, "Timeout in wait(STAT_XFE)\n");
  if (wait_for_bit == STAT_RDA)
   dev_err(chip->dev, "Timeout in wait(STAT_RDA)\n");
  return -EIO;
 }
 return 0;
}
