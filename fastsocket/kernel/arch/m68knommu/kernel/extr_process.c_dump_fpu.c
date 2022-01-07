
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct user_m68kfp_struct {int* fpcntl; int* fpregs; } ;
struct pt_regs {int dummy; } ;
struct TYPE_3__ {int fp; int fpcntl; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 scalar_t__ FPU_IS_EMU ;
 TYPE_2__* current ;
 int memcpy (int*,int ,int) ;

int dump_fpu(struct pt_regs *regs, struct user_m68kfp_struct *fpu)
{
 return 1;
}
