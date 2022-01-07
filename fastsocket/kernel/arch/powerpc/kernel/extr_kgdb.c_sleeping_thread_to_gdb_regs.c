
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * evr; scalar_t__ ksp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int xer; int ctr; int link; int ccr; int msr; int nip; int * gpr; } ;


 int BUG_ON (int) ;
 int NUMREGBYTES ;
 int PACK32 (unsigned long*,int ) ;
 int PACK64 (unsigned long*,int ) ;
 scalar_t__ STACK_FRAME_OVERHEAD ;
 int memset (unsigned long*,int ,int) ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *p)
{
 struct pt_regs *regs = (struct pt_regs *)(p->thread.ksp +
        STACK_FRAME_OVERHEAD);
 unsigned long *ptr = gdb_regs;
 int reg;

 memset(gdb_regs, 0, NUMREGBYTES);


 for (reg = 0; reg < 3; reg++)
  PACK64(ptr, regs->gpr[reg]);


 ptr += 11;


 for (reg = 14; reg < 32; reg++)
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
