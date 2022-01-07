
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_5__ {int fpc; TYPE_3__* fprs; } ;
struct TYPE_6__ {TYPE_1__ fp_regs; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_7__ {float f; } ;


 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_DIV_S (int ,int ,int ) ;
 int FP_PACK_SP (float*,int ) ;
 int FP_UNPACK_SP (int ,float*) ;
 int SA ;
 int SB ;
 int SR ;
 int _fex ;
 TYPE_4__* current ;

__attribute__((used)) static int emu_deb (struct pt_regs *regs, int rx, float *val) {
        FP_DECL_S(SA); FP_DECL_S(SB); FP_DECL_S(SR);
        FP_DECL_EX;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        FP_UNPACK_SP(SA, &current->thread.fp_regs.fprs[rx].f);
        FP_UNPACK_SP(SB, val);
        FP_DIV_S(SR, SA, SB);
 FP_PACK_SP(&current->thread.fp_regs.fprs[rx].f, SR);
        return _fex;
}
