
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int* gprs; } ;
typedef int __u32 ;
struct TYPE_4__ {int fpc; } ;
struct TYPE_5__ {TYPE_1__ fp_regs; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;


 int FPC_VALID_MASK ;
 int SIGILL ;
 TYPE_3__* current ;

__attribute__((used)) static int emu_sfpc (struct pt_regs *regs, int rx, int ry) {
        __u32 temp;

        temp = regs->gprs[rx];
        if ((temp & ~FPC_VALID_MASK) != 0)
  return SIGILL;
 current->thread.fp_regs.fpc = temp;
        return 0;
}
