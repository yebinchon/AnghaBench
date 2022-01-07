
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_5__ {int fpc; TYPE_2__* fprs; } ;
struct TYPE_7__ {TYPE_1__ fp_regs; } ;
struct TYPE_8__ {TYPE_3__ thread; } ;
struct TYPE_6__ {int f; int d; } ;


 int D ;
 int DA ;
 int FP_CONV (int ,int ,int,int,int ,int ) ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_PACK_SP (int *,int ) ;
 int FP_UNPACK_DP (int ,int *) ;
 int S ;
 int SR ;
 int _fex ;
 TYPE_4__* current ;

__attribute__((used)) static int emu_ledbr (struct pt_regs *regs, int rx, int ry) {
        FP_DECL_D(DA); FP_DECL_S(SR);
 FP_DECL_EX;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        FP_UNPACK_DP(DA, &current->thread.fp_regs.fprs[ry].d);
 FP_CONV (S, D, 1, 2, SR, DA);
 FP_PACK_SP(&current->thread.fp_regs.fprs[rx].f, SR);
        return _fex;
}
