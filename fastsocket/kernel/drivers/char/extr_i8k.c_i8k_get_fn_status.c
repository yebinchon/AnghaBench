
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int eax; } ;



 int I8K_FN_MASK ;

 int I8K_FN_SHIFT ;

 int I8K_SMM_FN_STATUS ;
 int I8K_VOL_DOWN ;
 int I8K_VOL_MUTE ;
 int I8K_VOL_UP ;
 int i8k_smm (struct smm_regs*) ;

__attribute__((used)) static int i8k_get_fn_status(void)
{
 struct smm_regs regs = { .eax = I8K_SMM_FN_STATUS, };
 int rc;

 if ((rc = i8k_smm(&regs)) < 0)
  return rc;

 switch ((regs.eax >> I8K_FN_SHIFT) & I8K_FN_MASK) {
 case 128:
  return I8K_VOL_UP;
 case 130:
  return I8K_VOL_DOWN;
 case 129:
  return I8K_VOL_MUTE;
 default:
  return 0;
 }
}
