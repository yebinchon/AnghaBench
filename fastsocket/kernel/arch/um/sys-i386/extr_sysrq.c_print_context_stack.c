
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;


 scalar_t__ __kernel_text_address (unsigned long) ;
 int print_symbol (char*,unsigned long) ;
 int printk (char*,...) ;
 scalar_t__ valid_stack_ptr (struct thread_info*,unsigned long*) ;

__attribute__((used)) static inline unsigned long print_context_stack(struct thread_info *tinfo,
    unsigned long *stack, unsigned long ebp)
{
 unsigned long addr;
 while (valid_stack_ptr(tinfo, stack)) {
  addr = *stack;
  if (__kernel_text_address(addr)) {
   printk("%08lx:  [<%08lx>]", (unsigned long) stack, addr);
   print_symbol(" %s", addr);
   printk("\n");
  }
  stack++;
 }

 return ebp;
}
