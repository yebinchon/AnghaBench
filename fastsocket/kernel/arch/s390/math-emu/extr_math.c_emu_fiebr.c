
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_7__ {int fpc; TYPE_1__* fprs; } ;
typedef TYPE_3__ s390_fp_regs ;
typedef int __s32 ;
struct TYPE_6__ {TYPE_3__ fp_regs; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_5__ {int f; } ;


 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_PACK_SP (int *,int ) ;
 int FP_RND_NEAREST ;
 int FP_TO_FPINT_ROUND_S (int ) ;
 int FP_UNPACK_SP (int ,int *) ;
 int SA ;
 int _fex ;
 TYPE_4__* current ;

__attribute__((used)) static int emu_fiebr (struct pt_regs *regs, int rx, int ry, int mask) {
        s390_fp_regs *fp_regs = &current->thread.fp_regs;
        FP_DECL_S(SA);
        FP_DECL_EX;
        __s32 si;
        int mode;

 if (mask == 0)
  mode = fp_regs->fpc & 3;
 else if (mask == 1)
  mode = FP_RND_NEAREST;
 else
  mode = mask - 4;
        FP_UNPACK_SP(SA, &fp_regs->fprs[ry].f);
 FP_TO_FPINT_ROUND_S(SA);
 FP_PACK_SP(&fp_regs->fprs[rx].f, SA);
        return _fex;
}
