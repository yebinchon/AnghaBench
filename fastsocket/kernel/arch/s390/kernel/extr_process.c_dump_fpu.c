
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef int s390_fp_regs ;
struct TYPE_3__ {int fp_regs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int memcpy (int *,int *,int) ;
 int save_fp_regs (int *) ;

int dump_fpu (struct pt_regs * regs, s390_fp_regs *fpregs)
{





 save_fp_regs(&current->thread.fp_regs);
 memcpy(fpregs, &current->thread.fp_regs, sizeof(s390_fp_regs));



 return 1;
}
