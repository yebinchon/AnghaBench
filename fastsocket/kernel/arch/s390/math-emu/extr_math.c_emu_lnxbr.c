
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
struct TYPE_11__ {TYPE_1__ w; int ld; } ;
typedef TYPE_5__ mathemu_ldcv ;
struct TYPE_9__ {int fpc; TYPE_2__* fprs; } ;
struct TYPE_10__ {TYPE_3__ fp_regs; } ;
struct TYPE_12__ {TYPE_4__ thread; } ;
struct TYPE_8__ {int ui; } ;


 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_NEG_Q (int ,int ) ;
 int FP_PACK_QP (int *,int ) ;
 int FP_UNPACK_QP (int ,int *) ;
 int QA ;
 scalar_t__ QA_s ;
 int QR ;
 int QR_c ;
 int QR_s ;
 int _fex ;
 TYPE_6__* current ;
 int emu_set_CC_cs (struct pt_regs*,int ,int ) ;

__attribute__((used)) static int emu_lnxbr (struct pt_regs *regs, int rx, int ry) {
        FP_DECL_Q(QA); FP_DECL_Q(QR);
 FP_DECL_EX;
 mathemu_ldcv cvt;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        cvt.w.high = current->thread.fp_regs.fprs[ry].ui;
        cvt.w.low = current->thread.fp_regs.fprs[ry+2].ui;
        FP_UNPACK_QP(QA, &cvt.ld);
        if (QA_s == 0) {
  FP_NEG_Q(QR, QA);
  FP_PACK_QP(&cvt.ld, QR);
  current->thread.fp_regs.fprs[rx].ui = cvt.w.high;
  current->thread.fp_regs.fprs[rx+2].ui = cvt.w.low;
 } else {
  current->thread.fp_regs.fprs[rx].ui =
   current->thread.fp_regs.fprs[ry].ui;
  current->thread.fp_regs.fprs[rx+2].ui =
   current->thread.fp_regs.fprs[ry+2].ui;
 }
 emu_set_CC_cs(regs, QR_c, QR_s);
        return _fex;
}
