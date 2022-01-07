
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long link; unsigned long* gpr; unsigned long nip; } ;
struct perf_callchain_entry {int dummy; } ;


 unsigned long PERF_CONTEXT_KERNEL ;
 size_t STACK_FRAME_LR_SAVE ;
 size_t STACK_FRAME_MARKER ;
 scalar_t__ STACK_FRAME_OVERHEAD ;
 unsigned long STACK_FRAME_REGS_MARKER ;
 unsigned long STACK_INT_FRAME_SIZE ;
 int current ;
 int kernel_text_address (unsigned long) ;
 int perf_callchain_store (struct perf_callchain_entry*,unsigned long) ;
 unsigned long perf_instruction_pointer (struct pt_regs*) ;
 int valid_next_sp (unsigned long,unsigned long) ;
 int validate_sp (unsigned long,int ,scalar_t__) ;

void
perf_callchain_kernel(struct perf_callchain_entry *entry, struct pt_regs *regs)
{
 unsigned long sp, next_sp;
 unsigned long next_ip;
 unsigned long lr;
 long level = 0;
 unsigned long *fp;

 lr = regs->link;
 sp = regs->gpr[1];
 perf_callchain_store(entry, perf_instruction_pointer(regs));

 if (!validate_sp(sp, current, STACK_FRAME_OVERHEAD))
  return;

 for (;;) {
  fp = (unsigned long *) sp;
  next_sp = fp[0];

  if (next_sp == sp + STACK_INT_FRAME_SIZE &&
      fp[STACK_FRAME_MARKER] == STACK_FRAME_REGS_MARKER) {




   regs = (struct pt_regs *)(sp + STACK_FRAME_OVERHEAD);
   next_ip = regs->nip;
   lr = regs->link;
   level = 0;
   perf_callchain_store(entry, PERF_CONTEXT_KERNEL);

  } else {
   if (level == 0)
    next_ip = lr;
   else
    next_ip = fp[STACK_FRAME_LR_SAVE];
   if ((level == 1 && next_ip == lr) ||
       (level <= 1 && !kernel_text_address(next_ip)))
    next_ip = 0;

   ++level;
  }

  perf_callchain_store(entry, next_ip);
  if (!valid_next_sp(next_sp, sp))
   return;
  sp = next_sp;
 }
}
