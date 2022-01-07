
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_vm86_regs {int dummy; } ;


 int VEFLAGS ;
 int X86_EFLAGS_VIF ;

__attribute__((used)) static inline void clear_IF(struct kernel_vm86_regs *regs)
{
 VEFLAGS &= ~X86_EFLAGS_VIF;
}
