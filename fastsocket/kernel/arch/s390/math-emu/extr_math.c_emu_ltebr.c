
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_7__ {TYPE_2__* fprs; } ;
typedef TYPE_3__ s390_fp_regs ;
struct TYPE_5__ {TYPE_3__ fp_regs; } ;
struct TYPE_8__ {TYPE_1__ thread; } ;
struct TYPE_6__ {int ui; int f; } ;


 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_UNPACK_SP (int ,int *) ;
 int SA ;
 int SA_c ;
 int SA_s ;
 int _fex ;
 TYPE_4__* current ;
 int emu_set_CC_cs (struct pt_regs*,int ,int ) ;

__attribute__((used)) static int emu_ltebr (struct pt_regs *regs, int rx, int ry) {
        s390_fp_regs *fp_regs = &current->thread.fp_regs;
        FP_DECL_S(SA);
        FP_DECL_EX;

        FP_UNPACK_SP(SA, &fp_regs->fprs[ry].f);
        fp_regs->fprs[rx].ui = fp_regs->fprs[ry].ui;
        emu_set_CC_cs(regs, SA_c, SA_s);
        return _fex;
}
