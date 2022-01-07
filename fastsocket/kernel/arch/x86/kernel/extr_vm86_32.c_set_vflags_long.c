
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct kernel_vm86_regs {TYPE_2__ pt; } ;
struct TYPE_4__ {int v86mask; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 int SAFE_MASK ;
 int VEFLAGS ;
 unsigned long X86_EFLAGS_IF ;
 int clear_IF (struct kernel_vm86_regs*) ;
 TYPE_3__* current ;
 int set_IF (struct kernel_vm86_regs*) ;
 int set_flags (int ,unsigned long,int ) ;

__attribute__((used)) static inline void set_vflags_long(unsigned long flags, struct kernel_vm86_regs *regs)
{
 set_flags(VEFLAGS, flags, current->thread.v86mask);
 set_flags(regs->pt.flags, flags, SAFE_MASK);
 if (flags & X86_EFLAGS_IF)
  set_IF(regs);
 else
  clear_IF(regs);
}
