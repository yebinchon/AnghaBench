
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int eax; int ebx; } ;


 int I8K_MAX_TEMP ;
 int I8K_SMM_GET_TEMP ;
 int i8k_smm (struct smm_regs*) ;

__attribute__((used)) static int i8k_get_temp(int sensor)
{
 struct smm_regs regs = { .eax = I8K_SMM_GET_TEMP, };
 int rc;
 int temp;




 regs.ebx = sensor & 0xff;
 if ((rc = i8k_smm(&regs)) < 0)
  return rc;

 temp = regs.eax & 0xff;
 return temp;
}
