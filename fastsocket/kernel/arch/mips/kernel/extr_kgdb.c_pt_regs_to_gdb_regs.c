
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pt_regs {int cp0_status; int cp0_epc; int cp0_cause; int cp0_badvaddr; int hi; int lo; int * regs; } ;
struct TYPE_5__ {int * fpr; } ;
struct TYPE_6__ {TYPE_1__ fpu; } ;
struct TYPE_7__ {TYPE_2__ thread; } ;


 int ST0_CU1 ;
 TYPE_3__* current ;
 int save_fp (TYPE_3__*) ;

void pt_regs_to_gdb_regs(unsigned long *gdb_regs, struct pt_regs *regs)
{
 int reg;




 u64 *ptr = (u64 *)gdb_regs;


 for (reg = 0; reg < 32; reg++)
  *(ptr++) = regs->regs[reg];

 *(ptr++) = regs->cp0_status;
 *(ptr++) = regs->lo;
 *(ptr++) = regs->hi;
 *(ptr++) = regs->cp0_badvaddr;
 *(ptr++) = regs->cp0_cause;
 *(ptr++) = regs->cp0_epc;


 if (!(current && (regs->cp0_status & ST0_CU1)))
  return;

 save_fp(current);
 for (reg = 0; reg < 32; reg++)
  *(ptr++) = current->thread.fpu.fpr[reg];
}
