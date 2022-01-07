
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
struct TYPE_5__ {float f; int d; } ;


 int D ;
 int DA ;
 int DB ;
 int DR ;
 int FP_CONV (int ,int ,int,int,int ,int ) ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_MUL_D (int ,int ,int ) ;
 int FP_PACK_DP (int *,int ) ;
 int FP_UNPACK_SP (int ,float*) ;
 int S ;
 int SA ;
 int _fex ;
 TYPE_4__* current ;

__attribute__((used)) static int emu_mdeb (struct pt_regs *regs, int rx, float *val) {
        FP_DECL_S(SA); FP_DECL_D(DA); FP_DECL_D(DB); FP_DECL_D(DR);
 FP_DECL_EX;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        FP_UNPACK_SP(SA, &current->thread.fp_regs.fprs[rx].f);
 FP_CONV (D, S, 2, 1, DA, SA);
        FP_UNPACK_SP(SA, val);
 FP_CONV (D, S, 2, 1, DB, SA);
        FP_MUL_D(DR, DA, DB);
 FP_PACK_DP(&current->thread.fp_regs.fprs[rx].d, DR);
        return _fex;
}
