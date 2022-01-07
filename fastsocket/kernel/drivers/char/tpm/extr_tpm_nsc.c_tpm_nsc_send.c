
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ base; } ;
struct tpm_chip {TYPE_1__ vendor; int dev; } ;


 int EIO ;
 scalar_t__ NSC_COMMAND ;
 int NSC_COMMAND_CANCEL ;
 int NSC_COMMAND_EOC ;
 int NSC_COMMAND_NORMAL ;
 scalar_t__ NSC_DATA ;
 int NSC_STATUS_IBF ;
 int NSC_STATUS_IBR ;
 int dev_err (int ,char*) ;
 scalar_t__ nsc_wait_for_ready (struct tpm_chip*) ;
 int outb (int ,scalar_t__) ;
 scalar_t__ wait_for_stat (struct tpm_chip*,int ,int ,int *) ;

__attribute__((used)) static int tpm_nsc_send(struct tpm_chip *chip, u8 * buf, size_t count)
{
 u8 data;
 int i;







 outb(NSC_COMMAND_CANCEL, chip->vendor.base + NSC_COMMAND);

 if (nsc_wait_for_ready(chip) != 0)
  return -EIO;

 if (wait_for_stat(chip, NSC_STATUS_IBF, 0, &data) < 0) {
  dev_err(chip->dev, "IBF timeout\n");
  return -EIO;
 }

 outb(NSC_COMMAND_NORMAL, chip->vendor.base + NSC_COMMAND);
 if (wait_for_stat(chip, NSC_STATUS_IBR, NSC_STATUS_IBR, &data) < 0) {
  dev_err(chip->dev, "IBR timeout\n");
  return -EIO;
 }

 for (i = 0; i < count; i++) {
  if (wait_for_stat(chip, NSC_STATUS_IBF, 0, &data) < 0) {
   dev_err(chip->dev,
    "IBF timeout (while writing data)\n");
   return -EIO;
  }
  outb(buf[i], chip->vendor.base + NSC_DATA);
 }

 if (wait_for_stat(chip, NSC_STATUS_IBF, 0, &data) < 0) {
  dev_err(chip->dev, "IBF timeout\n");
  return -EIO;
 }
 outb(NSC_COMMAND_EOC, chip->vendor.base + NSC_COMMAND);

 return count;
}
