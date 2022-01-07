
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_7__ {TYPE_1__* fprs; } ;
struct TYPE_6__ {TYPE_3__ fp_regs; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_5__ {int f; } ;


 int FP_CMP_S (int,int ,int ,int) ;
 int FP_DECL_S (int ) ;
 int FP_UNPACK_RAW_SP (int ,int *) ;
 int SA ;
 int SB ;
 TYPE_4__* current ;
 int emu_set_CC (struct pt_regs*,int) ;

__attribute__((used)) static int emu_cebr (struct pt_regs *regs, int rx, int ry) {
        FP_DECL_S(SA); FP_DECL_S(SB);
        int IR;

        FP_UNPACK_RAW_SP(SA, &current->thread.fp_regs.fprs[rx].f);
        FP_UNPACK_RAW_SP(SB, &current->thread.fp_regs.fprs[ry].f);
        FP_CMP_S(IR, SA, SB, 3);




        emu_set_CC(regs, (IR == -1) ? 1 : (IR == 1) ? 2 : IR);
        return 0;
}
