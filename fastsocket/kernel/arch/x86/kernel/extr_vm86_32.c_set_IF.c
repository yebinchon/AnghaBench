
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_vm86_regs {int dummy; } ;


 int VEFLAGS ;
 int VM86_STI ;
 int X86_EFLAGS_VIF ;
 int X86_EFLAGS_VIP ;
 int return_to_32bit (struct kernel_vm86_regs*,int ) ;

__attribute__((used)) static inline void set_IF(struct kernel_vm86_regs *regs)
{
 VEFLAGS |= X86_EFLAGS_VIF;
 if (VEFLAGS & X86_EFLAGS_VIP)
  return_to_32bit(regs, VM86_STI);
}
