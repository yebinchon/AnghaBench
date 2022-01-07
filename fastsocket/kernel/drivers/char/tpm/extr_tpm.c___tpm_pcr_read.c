
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int pcr_result; } ;
struct TYPE_6__ {int pcr_idx; } ;
struct TYPE_8__ {TYPE_3__ pcrread_out; TYPE_2__ pcrread_in; } ;
struct TYPE_5__ {int in; } ;
struct tpm_cmd_t {TYPE_4__ params; TYPE_1__ header; } ;
struct tpm_chip {int dummy; } ;


 int READ_PCR_RESULT_SIZE ;
 int TPM_DIGEST_SIZE ;
 int cpu_to_be32 (int) ;
 int memcpy (int *,int ,int ) ;
 int pcrread_header ;
 int transmit_cmd (struct tpm_chip*,struct tpm_cmd_t*,int ,char*) ;

int __tpm_pcr_read(struct tpm_chip *chip, int pcr_idx, u8 *res_buf)
{
 int rc;
 struct tpm_cmd_t cmd;

 cmd.header.in = pcrread_header;
 cmd.params.pcrread_in.pcr_idx = cpu_to_be32(pcr_idx);
 rc = transmit_cmd(chip, &cmd, READ_PCR_RESULT_SIZE,
     "attempting to read a pcr value");

 if (rc == 0)
  memcpy(res_buf, cmd.params.pcrread_out.pcr_result,
         TPM_DIGEST_SIZE);
 return rc;
}
