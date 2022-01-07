
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int eax; } ;


 int I8K_AC ;
 int I8K_BATTERY ;
 int I8K_POWER_AC ;
 int I8K_SMM_POWER_STATUS ;
 int i8k_smm (struct smm_regs*) ;

__attribute__((used)) static int i8k_get_power_status(void)
{
 struct smm_regs regs = { .eax = I8K_SMM_POWER_STATUS, };
 int rc;

 if ((rc = i8k_smm(&regs)) < 0)
  return rc;

 return (regs.eax & 0xff) == I8K_POWER_AC ? I8K_AC : I8K_BATTERY;
}
