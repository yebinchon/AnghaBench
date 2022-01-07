
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_10__ {int hash; int pcr_idx; } ;
struct TYPE_9__ {TYPE_5__ pcrextend_in; } ;
struct TYPE_8__ {int in; } ;
struct tpm_cmd_t {TYPE_4__ params; TYPE_3__ header; } ;
struct tpm_chip {TYPE_2__* dev; } ;
struct TYPE_7__ {TYPE_1__* driver; } ;
struct TYPE_6__ {int owner; } ;


 int ENODEV ;
 int EXTEND_PCR_RESULT_SIZE ;
 int TPM_DIGEST_SIZE ;
 int cpu_to_be32 (int) ;
 int memcpy (int ,int const*,int ) ;
 int module_put (int ) ;
 int pcrextend_header ;
 struct tpm_chip* tpm_chip_find_get (int ) ;
 int transmit_cmd (struct tpm_chip*,struct tpm_cmd_t*,int ,char*) ;

int tpm_pcr_extend(u32 chip_num, int pcr_idx, const u8 *hash)
{
 struct tpm_cmd_t cmd;
 int rc;
 struct tpm_chip *chip;

 chip = tpm_chip_find_get(chip_num);
 if (chip == ((void*)0))
  return -ENODEV;

 cmd.header.in = pcrextend_header;
 cmd.params.pcrextend_in.pcr_idx = cpu_to_be32(pcr_idx);
 memcpy(cmd.params.pcrextend_in.hash, hash, TPM_DIGEST_SIZE);
 rc = transmit_cmd(chip, &cmd, EXTEND_PCR_RESULT_SIZE,
     "attempting extend a PCR value");

 module_put(chip->dev->driver->owner);
 return rc;
}
