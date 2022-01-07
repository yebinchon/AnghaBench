
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


struct pt_regs {int * gprs; } ;
struct TYPE_7__ {int low; int high; } ;
struct TYPE_11__ {int ld; TYPE_1__ w; } ;
typedef TYPE_5__ mathemu_ldcv ;
typedef int __s32 ;
struct TYPE_9__ {int fpc; TYPE_2__* fprs; } ;
struct TYPE_10__ {TYPE_3__ fp_regs; } ;
struct TYPE_12__ {TYPE_4__ thread; } ;
struct TYPE_8__ {int ui; } ;


 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_RND_NEAREST ;
 int FP_TO_INT_ROUND_Q (int ,int ,int,int) ;
 int FP_UNPACK_QP (int ,int *) ;
 int QA ;
 int QA_c ;
 int QA_s ;
 int _fex ;
 TYPE_6__* current ;
 int emu_set_CC_cs (struct pt_regs*,int ,int ) ;

__attribute__((used)) static int emu_cfxbr (struct pt_regs *regs, int rx, int ry, int mask) {
        FP_DECL_Q(QA);
        FP_DECL_EX;
 mathemu_ldcv cvt;
        __s32 si;
        int mode;

 if (mask == 0)
  mode = current->thread.fp_regs.fpc & 3;
 else if (mask == 1)
  mode = FP_RND_NEAREST;
 else
  mode = mask - 4;
        cvt.w.high = current->thread.fp_regs.fprs[ry].ui;
        cvt.w.low = current->thread.fp_regs.fprs[ry+2].ui;
        FP_UNPACK_QP(QA, &cvt.ld);
        FP_TO_INT_ROUND_Q(si, QA, 32, 1);
        regs->gprs[rx] = si;
        emu_set_CC_cs(regs, QA_c, QA_s);
        return _fex;
}
