
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int num_pcrs; } ;
typedef TYPE_1__ cap_t ;


 int TPM_CAP_PROP_PCR ;
 int TPM_DIGEST_SIZE ;
 int __tpm_pcr_read (struct tpm_chip*,int,int*) ;
 int be32_to_cpu (int ) ;
 struct tpm_chip* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,...) ;
 int tpm_getcap (struct device*,int ,TYPE_1__*,char*) ;

ssize_t tpm_show_pcrs(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 cap_t cap;
 u8 digest[TPM_DIGEST_SIZE];
 ssize_t rc;
 int i, j, num_pcrs;
 char *str = buf;
 struct tpm_chip *chip = dev_get_drvdata(dev);

 rc = tpm_getcap(dev, TPM_CAP_PROP_PCR, &cap,
   "attempting to determine the number of PCRS");
 if (rc)
  return 0;

 num_pcrs = be32_to_cpu(cap.num_pcrs);
 for (i = 0; i < num_pcrs; i++) {
  rc = __tpm_pcr_read(chip, i, digest);
  if (rc)
   break;
  str += sprintf(str, "PCR-%02d: ", i);
  for (j = 0; j < TPM_DIGEST_SIZE; j++)
   str += sprintf(str, "%02X ", digest[j]);
  str += sprintf(str, "\n");
 }
 return str - buf;
}
