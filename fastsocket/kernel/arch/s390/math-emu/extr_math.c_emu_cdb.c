
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_6__ {TYPE_1__* fprs; } ;
struct TYPE_7__ {TYPE_2__ fp_regs; } ;
struct TYPE_8__ {TYPE_3__ thread; } ;
struct TYPE_5__ {double d; } ;


 int DA ;
 int DB ;
 int FP_CMP_D (int,int ,int ,int) ;
 int FP_DECL_D (int ) ;
 int FP_UNPACK_RAW_DP (int ,double*) ;
 TYPE_4__* current ;
 int emu_set_CC (struct pt_regs*,int) ;

__attribute__((used)) static int emu_cdb (struct pt_regs *regs, int rx, double *val) {
        FP_DECL_D(DA); FP_DECL_D(DB);
        int IR;

        FP_UNPACK_RAW_DP(DA, &current->thread.fp_regs.fprs[rx].d);
        FP_UNPACK_RAW_DP(DB, val);
        FP_CMP_D(IR, DA, DB, 3);




        emu_set_CC(regs, (IR == -1) ? 1 : (IR == 1) ? 2 : IR);
        return 0;
}
