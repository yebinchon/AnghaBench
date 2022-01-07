
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
struct TYPE_5__ {int d; } ;


 int DA ;
 int DB ;
 int DC ;
 int DR ;
 int FP_ADD_D (int ,int ,int ) ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_MUL_D (int ,int ,int ) ;
 int FP_PACK_DP (int *,int ) ;
 int FP_UNPACK_DP (int ,int *) ;
 int _fex ;
 TYPE_4__* current ;

__attribute__((used)) static int emu_madbr (struct pt_regs *regs, int rx, int ry, int rz) {
        FP_DECL_D(DA); FP_DECL_D(DB); FP_DECL_D(DC); FP_DECL_D(DR);
        FP_DECL_EX;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        FP_UNPACK_DP(DA, &current->thread.fp_regs.fprs[rx].d);
        FP_UNPACK_DP(DB, &current->thread.fp_regs.fprs[ry].d);
        FP_UNPACK_DP(DC, &current->thread.fp_regs.fprs[rz].d);
        FP_MUL_D(DR, DA, DB);
        FP_ADD_D(DR, DR, DC);
 FP_PACK_DP(&current->thread.fp_regs.fprs[rz].d, DR);
        return _fex;
}
