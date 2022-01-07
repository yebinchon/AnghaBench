
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int eax; } ;


 int I8K_SMM_BIOS_VERSION ;
 scalar_t__ i8k_smm (struct smm_regs*) ;

__attribute__((used)) static int i8k_get_bios_version(void)
{
 struct smm_regs regs = { .eax = I8K_SMM_BIOS_VERSION, };

 return i8k_smm(&regs) ? : regs.eax;
}
