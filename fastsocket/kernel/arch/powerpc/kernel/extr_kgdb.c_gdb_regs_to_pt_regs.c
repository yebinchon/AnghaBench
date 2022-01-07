
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int xer; int ctr; int link; int ccr; int msr; int nip; int * gpr; } ;
struct TYPE_3__ {int * evr; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int BUG_ON (int) ;
 int NUMREGBYTES ;
 int UNPACK32 (int ,unsigned long*) ;
 int UNPACK64 (int ,unsigned long*) ;
 TYPE_2__* current ;

void gdb_regs_to_pt_regs(unsigned long *gdb_regs, struct pt_regs *regs)
{
 unsigned long *ptr = gdb_regs;
 int reg;

 for (reg = 0; reg < 32; reg++)
  UNPACK64(regs->gpr[reg], ptr);
 ptr += 32 * 8 / sizeof(int);


 UNPACK64(regs->nip, ptr);
 UNPACK64(regs->msr, ptr);
 UNPACK32(regs->ccr, ptr);
 UNPACK64(regs->link, ptr);
 UNPACK64(regs->ctr, ptr);
 UNPACK32(regs->xer, ptr);

 BUG_ON((unsigned long)ptr >
        (unsigned long)(((void *)gdb_regs) + NUMREGBYTES));
}
