
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long flags; } ;
struct kernel_vm86_regs {TYPE_1__ pt; } ;
struct TYPE_5__ {int v86mask; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;


 unsigned long RETURN_MASK ;
 int VEFLAGS ;
 unsigned long X86_EFLAGS_IF ;
 unsigned long X86_EFLAGS_IOPL ;
 int X86_EFLAGS_VIF ;
 TYPE_3__* current ;

__attribute__((used)) static inline unsigned long get_vflags(struct kernel_vm86_regs *regs)
{
 unsigned long flags = regs->pt.flags & RETURN_MASK;

 if (VEFLAGS & X86_EFLAGS_VIF)
  flags |= X86_EFLAGS_IF;
 flags |= X86_EFLAGS_IOPL;
 return flags | (VEFLAGS & current->thread.v86mask);
}
