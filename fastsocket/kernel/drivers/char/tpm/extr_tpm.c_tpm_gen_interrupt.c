
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int subcap; int subcap_size; int cap; } ;
struct TYPE_6__ {TYPE_2__ getcap_in; } ;
struct TYPE_4__ {int in; } ;
struct tpm_cmd_t {TYPE_3__ params; TYPE_1__ header; } ;
struct tpm_chip {int dummy; } ;
typedef int ssize_t ;


 int TPM_CAP_PROP ;
 int TPM_CAP_PROP_TIS_TIMEOUT ;
 int TPM_INTERNAL_RESULT_SIZE ;
 int cpu_to_be32 (int) ;
 int tpm_getcap_header ;
 int transmit_cmd (struct tpm_chip*,struct tpm_cmd_t*,int ,char*) ;

void tpm_gen_interrupt(struct tpm_chip *chip)
{
 struct tpm_cmd_t tpm_cmd;
 ssize_t rc;

 tpm_cmd.header.in = tpm_getcap_header;
 tpm_cmd.params.getcap_in.cap = TPM_CAP_PROP;
 tpm_cmd.params.getcap_in.subcap_size = cpu_to_be32(4);
 tpm_cmd.params.getcap_in.subcap = TPM_CAP_PROP_TIS_TIMEOUT;

 rc = transmit_cmd(chip, &tpm_cmd, TPM_INTERNAL_RESULT_SIZE,
   "attempting to determine the timeouts");
}
