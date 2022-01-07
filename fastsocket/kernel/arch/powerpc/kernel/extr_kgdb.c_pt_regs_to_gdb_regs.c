
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
 int PACK32 (unsigned long*,int ) ;
 int PACK64 (unsigned long*,int ) ;
 TYPE_2__* current ;
 int memset (unsigned long*,int ,int) ;

void pt_regs_to_gdb_regs(unsigned long *gdb_regs, struct pt_regs *regs)
{
 unsigned long *ptr = gdb_regs;
 int reg;

 memset(gdb_regs, 0, NUMREGBYTES);

 for (reg = 0; reg < 32; reg++)
  PACK64(ptr, regs->gpr[reg]);
 ptr += 32 * 8 / sizeof(long);


 PACK64(ptr, regs->nip);
 PACK64(ptr, regs->msr);
 PACK32(ptr, regs->ccr);
 PACK64(ptr, regs->link);
 PACK64(ptr, regs->ctr);
 PACK32(ptr, regs->xer);

 BUG_ON((unsigned long)ptr >
        (unsigned long)(((void *)gdb_regs) + NUMREGBYTES));
}
