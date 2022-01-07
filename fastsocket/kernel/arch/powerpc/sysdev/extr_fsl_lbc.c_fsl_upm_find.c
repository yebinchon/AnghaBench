
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsl_upm {int width; int * mxmr; } ;
typedef int phys_addr_t ;
typedef int __be32 ;
struct TYPE_4__ {int mcmr; int mbmr; int mamr; TYPE_1__* bank; } ;
struct TYPE_3__ {int br; } ;


 int BR_MSEL ;



 int BR_PS ;



 int EINVAL ;
 int fsl_lbc_find (int ) ;
 TYPE_2__* fsl_lbc_regs ;
 int in_be32 (int *) ;

int fsl_upm_find(phys_addr_t addr_base, struct fsl_upm *upm)
{
 int bank;
 __be32 br;

 bank = fsl_lbc_find(addr_base);
 if (bank < 0)
  return bank;

 br = in_be32(&fsl_lbc_regs->bank[bank].br);

 switch (br & BR_MSEL) {
 case 133:
  upm->mxmr = &fsl_lbc_regs->mamr;
  break;
 case 132:
  upm->mxmr = &fsl_lbc_regs->mbmr;
  break;
 case 131:
  upm->mxmr = &fsl_lbc_regs->mcmr;
  break;
 default:
  return -EINVAL;
 }

 switch (br & BR_PS) {
 case 128:
  upm->width = 8;
  break;
 case 130:
  upm->width = 16;
  break;
 case 129:
  upm->width = 32;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
