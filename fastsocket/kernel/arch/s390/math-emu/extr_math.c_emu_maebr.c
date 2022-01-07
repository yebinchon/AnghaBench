
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_6__ {int fpc; TYPE_1__* fprs; } ;
struct TYPE_7__ {TYPE_2__ fp_regs; } ;
struct TYPE_8__ {TYPE_3__ thread; } ;
struct TYPE_5__ {int f; } ;


 int FP_ADD_S (int ,int ,int ) ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_MUL_S (int ,int ,int ) ;
 int FP_PACK_SP (int *,int ) ;
 int FP_UNPACK_SP (int ,int *) ;
 int SA ;
 int SB ;
 int SC ;
 int SR ;
 int _fex ;
 TYPE_4__* current ;

__attribute__((used)) static int emu_maebr (struct pt_regs *regs, int rx, int ry, int rz) {
        FP_DECL_S(SA); FP_DECL_S(SB); FP_DECL_S(SC); FP_DECL_S(SR);
        FP_DECL_EX;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        FP_UNPACK_SP(SA, &current->thread.fp_regs.fprs[rx].f);
        FP_UNPACK_SP(SB, &current->thread.fp_regs.fprs[ry].f);
        FP_UNPACK_SP(SC, &current->thread.fp_regs.fprs[rz].f);
        FP_MUL_S(SR, SA, SB);
        FP_ADD_S(SR, SR, SC);
 FP_PACK_SP(&current->thread.fp_regs.fprs[rz].f, SR);
        return _fex;
}
