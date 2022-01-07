
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct kernel_vm86_regs {TYPE_1__ pt; } ;


 int X86_EFLAGS_TF ;

__attribute__((used)) static inline void clear_TF(struct kernel_vm86_regs *regs)
{
 regs->pt.flags &= ~X86_EFLAGS_TF;
}
