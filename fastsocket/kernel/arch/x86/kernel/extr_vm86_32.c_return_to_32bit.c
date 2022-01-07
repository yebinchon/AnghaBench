
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ax; } ;
struct kernel_vm86_regs {int dummy; } ;


 struct pt_regs* save_v86_state (struct kernel_vm86_regs*) ;

__attribute__((used)) static inline void return_to_32bit(struct kernel_vm86_regs *regs16, int retval)
{
 struct pt_regs *regs32;

 regs32 = save_v86_state(regs16);
 regs32->ax = retval;
 __asm__ __volatile__("movl %0,%%esp\n\t"
  "movl %1,%%ebp\n\t"
  "jmp resume_userspace"
  : : "r" (regs32), "r" (current_thread_info()));
}
