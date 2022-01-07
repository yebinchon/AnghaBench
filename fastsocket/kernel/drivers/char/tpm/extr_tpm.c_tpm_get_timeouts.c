
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct duration_t {int tpm_long; int tpm_medium; int tpm_short; } ;
struct timeout_t {int d; int c; int b; int a; } ;
struct TYPE_11__ {struct duration_t duration; struct timeout_t timeout; } ;
struct TYPE_12__ {TYPE_4__ cap; } ;
struct TYPE_8__ {int subcap; void* subcap_size; void* cap; } ;
struct TYPE_13__ {TYPE_5__ getcap_out; TYPE_1__ getcap_in; } ;
struct TYPE_9__ {int return_code; int length; } ;
struct TYPE_10__ {TYPE_2__ out; void* in; } ;
struct tpm_cmd_t {TYPE_6__ params; TYPE_3__ header; } ;
struct TYPE_14__ {int* duration; void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;
struct tpm_chip {TYPE_7__ vendor; } ;
typedef scalar_t__ ssize_t ;


 int HZ ;
 void* TPM_CAP_PROP ;
 int TPM_CAP_PROP_TIS_DURATION ;
 int TPM_CAP_PROP_TIS_TIMEOUT ;
 int TPM_INTERNAL_RESULT_SIZE ;
 size_t TPM_LONG ;
 size_t TPM_MEDIUM ;
 size_t TPM_SHORT ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 void* tpm_getcap_header ;
 scalar_t__ transmit_cmd (struct tpm_chip*,struct tpm_cmd_t*,int ,char*) ;
 void* usecs_to_jiffies (int) ;

void tpm_get_timeouts(struct tpm_chip *chip)
{
 struct tpm_cmd_t tpm_cmd;
 struct timeout_t *timeout_cap;
 struct duration_t *duration_cap;
 ssize_t rc;
 u32 timeout;

 tpm_cmd.header.in = tpm_getcap_header;
 tpm_cmd.params.getcap_in.cap = TPM_CAP_PROP;
 tpm_cmd.params.getcap_in.subcap_size = cpu_to_be32(4);
 tpm_cmd.params.getcap_in.subcap = TPM_CAP_PROP_TIS_TIMEOUT;

 rc = transmit_cmd(chip, &tpm_cmd, TPM_INTERNAL_RESULT_SIZE,
   "attempting to determine the timeouts");
 if (rc)
  goto duration;

 if (be32_to_cpu(tpm_cmd.header.out.length)
     != 4 * sizeof(u32))
  goto duration;

 timeout_cap = &tpm_cmd.params.getcap_out.cap.timeout;

 timeout = be32_to_cpu(timeout_cap->a);
 if (timeout)
  chip->vendor.timeout_a = usecs_to_jiffies(timeout);
 timeout = be32_to_cpu(timeout_cap->b);
 if (timeout)
  chip->vendor.timeout_b = usecs_to_jiffies(timeout);
 timeout = be32_to_cpu(timeout_cap->c);
 if (timeout)
  chip->vendor.timeout_c = usecs_to_jiffies(timeout);
 timeout = be32_to_cpu(timeout_cap->d);
 if (timeout)
  chip->vendor.timeout_d = usecs_to_jiffies(timeout);

duration:
 tpm_cmd.header.in = tpm_getcap_header;
 tpm_cmd.params.getcap_in.cap = TPM_CAP_PROP;
 tpm_cmd.params.getcap_in.subcap_size = cpu_to_be32(4);
 tpm_cmd.params.getcap_in.subcap = TPM_CAP_PROP_TIS_DURATION;

 rc = transmit_cmd(chip, &tpm_cmd, TPM_INTERNAL_RESULT_SIZE,
   "attempting to determine the durations");
 if (rc)
  return;

 if (be32_to_cpu(tpm_cmd.header.out.return_code)
     != 3 * sizeof(u32))
  return;
 duration_cap = &tpm_cmd.params.getcap_out.cap.duration;
 chip->vendor.duration[TPM_SHORT] =
     usecs_to_jiffies(be32_to_cpu(duration_cap->tpm_short));




 if (chip->vendor.duration[TPM_SHORT] < (HZ/100))
  chip->vendor.duration[TPM_SHORT] = HZ;

 chip->vendor.duration[TPM_MEDIUM] =
     usecs_to_jiffies(be32_to_cpu(duration_cap->tpm_medium));
 chip->vendor.duration[TPM_LONG] =
     usecs_to_jiffies(be32_to_cpu(duration_cap->tpm_long));
}
