
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int * gprs; } ;
typedef int __s32 ;
struct TYPE_6__ {int fpc; TYPE_1__* fprs; } ;
struct TYPE_7__ {TYPE_2__ fp_regs; } ;
struct TYPE_8__ {TYPE_3__ thread; } ;
struct TYPE_5__ {int f; } ;


 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_RND_NEAREST ;
 int FP_TO_INT_ROUND_S (int ,int ,int,int) ;
 int FP_UNPACK_SP (int ,int *) ;
 int SA ;
 int SA_c ;
 int SA_s ;
 int _fex ;
 TYPE_4__* current ;
 int emu_set_CC_cs (struct pt_regs*,int ,int ) ;

__attribute__((used)) static int emu_cfebr (struct pt_regs *regs, int rx, int ry, int mask) {
        FP_DECL_S(SA);
        FP_DECL_EX;
        __s32 si;
        int mode;

 if (mask == 0)
  mode = current->thread.fp_regs.fpc & 3;
 else if (mask == 1)
  mode = FP_RND_NEAREST;
 else
  mode = mask - 4;
        FP_UNPACK_SP(SA, &current->thread.fp_regs.fprs[ry].f);
        FP_TO_INT_ROUND_S(si, SA, 32, 1);
        regs->gprs[rx] = si;
        emu_set_CC_cs(regs, SA_c, SA_s);
        return _fex;
}
