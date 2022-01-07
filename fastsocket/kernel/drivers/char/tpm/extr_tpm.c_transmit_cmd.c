
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int return_code; } ;
struct TYPE_4__ {TYPE_1__ out; } ;
struct tpm_cmd_t {TYPE_2__ header; } ;
struct tpm_chip {int dev; } ;
typedef int ssize_t ;


 int TPM_ERROR_SIZE ;
 int be32_to_cpu (int ) ;
 int dev_dbg (int ,char*,int,char const*) ;
 int tpm_transmit (struct tpm_chip*,int *,int) ;

__attribute__((used)) static ssize_t transmit_cmd(struct tpm_chip *chip, struct tpm_cmd_t *cmd,
       int len, const char *desc)
{
 int err;

 len = tpm_transmit(chip,(u8 *) cmd, len);
 if (len < 0)
  return len;
 if (len == TPM_ERROR_SIZE) {
  err = be32_to_cpu(cmd->header.out.return_code);
  dev_dbg(chip->dev, "A TPM error (%d) occurred %s\n", err, desc);
  return err;
 }
 return 0;
}
