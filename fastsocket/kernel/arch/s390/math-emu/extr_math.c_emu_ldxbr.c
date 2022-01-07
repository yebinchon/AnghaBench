
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_7__ {int low; int high; } ;
struct TYPE_11__ {int ld; TYPE_1__ w; } ;
typedef TYPE_5__ mathemu_ldcv ;
struct TYPE_9__ {int fpc; TYPE_2__* fprs; } ;
struct TYPE_10__ {TYPE_3__ fp_regs; } ;
struct TYPE_12__ {TYPE_4__ thread; } ;
struct TYPE_8__ {int f; int ui; } ;


 int D ;
 int DR ;
 int FP_CONV (int ,int ,int,int,int ,int ) ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_PACK_DP (int *,int ) ;
 int FP_UNPACK_QP (int ,int *) ;
 int Q ;
 int QA ;
 int _fex ;
 TYPE_6__* current ;

__attribute__((used)) static int emu_ldxbr (struct pt_regs *regs, int rx, int ry) {
        FP_DECL_Q(QA); FP_DECL_D(DR);
 FP_DECL_EX;
 mathemu_ldcv cvt;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        cvt.w.high = current->thread.fp_regs.fprs[ry].ui;
        cvt.w.low = current->thread.fp_regs.fprs[ry+2].ui;
        FP_UNPACK_QP(QA, &cvt.ld);
 FP_CONV (D, Q, 2, 4, DR, QA);
 FP_PACK_DP(&current->thread.fp_regs.fprs[rx].f, DR);
        return _fex;
}
