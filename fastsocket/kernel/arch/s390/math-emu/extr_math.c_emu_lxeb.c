
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
struct TYPE_9__ {int low; int high; } ;
struct TYPE_11__ {TYPE_3__ w; int ld; } ;
typedef TYPE_5__ mathemu_ldcv ;
struct TYPE_10__ {int fpc; TYPE_1__* fprs; } ;
struct TYPE_8__ {TYPE_4__ fp_regs; } ;
struct TYPE_12__ {TYPE_2__ thread; } ;
struct TYPE_7__ {int ui; } ;


 int FP_CONV (int ,int ,int,int,int ,int ) ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_DECL_S (int ) ;
 int FP_PACK_QP (int *,int ) ;
 int FP_UNPACK_SP (int ,float*) ;
 int Q ;
 int QR ;
 int S ;
 int SA ;
 int _fex ;
 TYPE_6__* current ;

__attribute__((used)) static int emu_lxeb (struct pt_regs *regs, int rx, float *val) {
        FP_DECL_S(SA); FP_DECL_Q(QR);
 FP_DECL_EX;
 mathemu_ldcv cvt;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        FP_UNPACK_SP(SA, val);
 FP_CONV (Q, S, 4, 1, QR, SA);
        FP_PACK_QP(&cvt.ld, QR);
        current->thread.fp_regs.fprs[rx].ui = cvt.w.high;
        current->thread.fp_regs.fprs[rx+2].ui = cvt.w.low;
        return _fex;
}
