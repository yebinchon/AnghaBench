
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tpm_chip {int dev; } ;


 int EIO ;
 int RDFIFO ;
 int STAT_RDA ;
 int TPM_CTRL_DATA ;
 int TPM_CTRL_ERROR ;
 int TPM_CTRL_WTX ;
 int TPM_CTRL_WTX_ABORT_ACK ;
 int TPM_INF_NAK ;
 scalar_t__ TPM_MAX_WTX_PACKAGES ;
 int TPM_VL_VER ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 scalar_t__ number_of_wtx ;
 int tpm_data_in (int ) ;
 int tpm_wtx (struct tpm_chip*) ;
 int tpm_wtx_abort (struct tpm_chip*) ;
 int wait (struct tpm_chip*,int ) ;

__attribute__((used)) static int tpm_inf_recv(struct tpm_chip *chip, u8 * buf, size_t count)
{
 int i;
 int ret;
 u32 size = 0;
 number_of_wtx = 0;

recv_begin:

 for (i = 0; i < 4; i++) {
  ret = wait(chip, STAT_RDA);
  if (ret)
   return -EIO;
  buf[i] = tpm_data_in(RDFIFO);
 }

 if (buf[0] != TPM_VL_VER) {
  dev_err(chip->dev,
   "Wrong transport protocol implementation!\n");
  return -EIO;
 }

 if (buf[1] == TPM_CTRL_DATA) {

  size = ((buf[2] << 8) | buf[3]);

  for (i = 0; i < size; i++) {
   wait(chip, STAT_RDA);
   buf[i] = tpm_data_in(RDFIFO);
  }

  if ((size == 0x6D00) && (buf[1] == 0x80)) {
   dev_err(chip->dev, "Error handling on vendor layer!\n");
   return -EIO;
  }

  for (i = 0; i < size; i++)
   buf[i] = buf[i + 6];

  size = size - 6;
  return size;
 }

 if (buf[1] == TPM_CTRL_WTX) {
  dev_info(chip->dev, "WTX-package received\n");
  if (number_of_wtx < TPM_MAX_WTX_PACKAGES) {
   tpm_wtx(chip);
   goto recv_begin;
  } else {
   tpm_wtx_abort(chip);
   goto recv_begin;
  }
 }

 if (buf[1] == TPM_CTRL_WTX_ABORT_ACK) {
  dev_info(chip->dev, "WTX-abort acknowledged\n");
  return size;
 }

 if (buf[1] == TPM_CTRL_ERROR) {
  dev_err(chip->dev, "ERROR-package received:\n");
  if (buf[4] == TPM_INF_NAK)
   dev_err(chip->dev,
    "-> Negative acknowledgement"
    " - retransmit command!\n");
  return -EIO;
 }
 return -EIO;
}
