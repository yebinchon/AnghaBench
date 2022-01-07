
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int locality; int int_queue; int timeout_c; } ;
struct tpm_chip {TYPE_1__ vendor; int dev; } ;
typedef int __be32 ;


 int EIO ;
 int ETIME ;
 size_t TPM_HEADER_SIZE ;
 int TPM_STS_DATA_AVAIL ;
 int TPM_STS_VALID ;
 int be32_to_cpu (int ) ;
 int dev_err (int ,char*) ;
 int recv_data (struct tpm_chip*,int *,int) ;
 int release_locality (struct tpm_chip*,int ,int ) ;
 int tpm_tis_ready (struct tpm_chip*) ;
 int tpm_tis_status (struct tpm_chip*) ;
 int wait_for_tpm_stat (struct tpm_chip*,int ,int ,int *) ;

__attribute__((used)) static int tpm_tis_recv(struct tpm_chip *chip, u8 *buf, size_t count)
{
 int size = 0;
 int expected, status;

 if (count < TPM_HEADER_SIZE) {
  size = -EIO;
  goto out;
 }


 if ((size =
      recv_data(chip, buf, TPM_HEADER_SIZE)) < TPM_HEADER_SIZE) {
  dev_err(chip->dev, "Unable to read header\n");
  goto out;
 }

 expected = be32_to_cpu(*(__be32 *) (buf + 2));
 if (expected > count) {
  size = -EIO;
  goto out;
 }

 if ((size +=
      recv_data(chip, &buf[TPM_HEADER_SIZE],
         expected - TPM_HEADER_SIZE)) < expected) {
  dev_err(chip->dev, "Unable to read remainder of result\n");
  size = -ETIME;
  goto out;
 }

 wait_for_tpm_stat(chip, TPM_STS_VALID, chip->vendor.timeout_c,
     &chip->vendor.int_queue);
 status = tpm_tis_status(chip);
 if (status & TPM_STS_DATA_AVAIL) {
  dev_err(chip->dev, "Error left over data\n");
  size = -EIO;
  goto out;
 }

out:
 tpm_tis_ready(chip);
 release_locality(chip, chip->vendor.locality, 0);
 return size;
}
