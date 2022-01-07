
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; scalar_t__ nip; } ;
struct bpt {int ref_count; scalar_t__ address; } ;


 int MSR_IR ;
 int MSR_PR ;
 int MSR_SF ;
 int atomic_dec (int *) ;
 scalar_t__ catch_memory_errors ;
 int handle_fault (struct pt_regs*) ;
 struct bpt* in_breakpoint_table (scalar_t__,unsigned long*) ;
 scalar_t__ in_xmon ;

__attribute__((used)) static int xmon_fault_handler(struct pt_regs *regs)
{
 struct bpt *bp;
 unsigned long offset;

 if (in_xmon && catch_memory_errors)
  handle_fault(regs);

 if ((regs->msr & (MSR_IR|MSR_PR|MSR_SF)) == (MSR_IR|MSR_SF)) {
  bp = in_breakpoint_table(regs->nip, &offset);
  if (bp != ((void*)0)) {
   regs->nip = bp->address + offset;
   atomic_dec(&bp->ref_count);
  }
 }

 return 0;
}
