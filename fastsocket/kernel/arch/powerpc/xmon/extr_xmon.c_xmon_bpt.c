
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; scalar_t__ nip; } ;
struct bpt {int ref_count; scalar_t__ address; } ;


 int MSR_IR ;
 int MSR_PR ;
 int MSR_SF ;
 struct bpt* at_breakpoint (scalar_t__) ;
 int atomic_dec (int *) ;
 struct bpt* in_breakpoint_table (scalar_t__,unsigned long*) ;
 int xmon_core (struct pt_regs*,int ) ;

__attribute__((used)) static int xmon_bpt(struct pt_regs *regs)
{
 struct bpt *bp;
 unsigned long offset;

 if ((regs->msr & (MSR_IR|MSR_PR|MSR_SF)) != (MSR_IR|MSR_SF))
  return 0;


 bp = in_breakpoint_table(regs->nip, &offset);
 if (bp != ((void*)0) && offset == 4) {
  regs->nip = bp->address + 4;
  atomic_dec(&bp->ref_count);
  return 1;
 }


 bp = at_breakpoint(regs->nip);
 if (!bp)
  return 0;

 xmon_core(regs, 0);

 return 1;
}
