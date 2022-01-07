
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {size_t cpu; } ;
struct pt_regs {int magic; } ;


 int PT_REGS_MAGIC ;
 unsigned long THREAD_SIZE ;
 scalar_t__* hardirq_stack ;
 scalar_t__* softirq_stack ;

__attribute__((used)) static inline bool kstack_is_trap_frame(struct thread_info *tp, struct pt_regs *regs)
{
 unsigned long base = (unsigned long) tp;
 unsigned long addr = (unsigned long) regs;

 if (addr >= base &&
     addr <= (base + THREAD_SIZE - sizeof(*regs)))
  goto check_magic;

 if (hardirq_stack[tp->cpu]) {
  base = (unsigned long) hardirq_stack[tp->cpu];
  if (addr >= base &&
      addr <= (base + THREAD_SIZE - sizeof(*regs)))
   goto check_magic;
  base = (unsigned long) softirq_stack[tp->cpu];
  if (addr >= base &&
      addr <= (base + THREAD_SIZE - sizeof(*regs)))
   goto check_magic;
 }
 return 0;

check_magic:
 if ((regs->magic & ~0x1ff) == PT_REGS_MAGIC)
  return 1;
 return 0;

}
