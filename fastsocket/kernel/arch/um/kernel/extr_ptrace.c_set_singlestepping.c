
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ singlestep_syscall; } ;
struct task_struct {TYPE_1__ thread; int ptrace; } ;


 int PT_DTRACE ;
 int SUBARCH_SET_SINGLESTEPPING (struct task_struct*,int) ;

__attribute__((used)) static inline void set_singlestepping(struct task_struct *child, int on)
{
 if (on)
  child->ptrace |= PT_DTRACE;
 else
  child->ptrace &= ~PT_DTRACE;
 child->thread.singlestep_syscall = 0;




}
