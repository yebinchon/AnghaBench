
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user {int dummy; } ;
struct task_struct {int pid; int comm; } ;
struct pt_regs {int dummy; } ;
typedef int regs ;


 int EIO ;
 scalar_t__ get_user_regs (struct task_struct*) ;
 int pr_debug (char*,unsigned long,...) ;

__attribute__((used)) static int ptrace_write_user(struct task_struct *tsk, unsigned long offset,
        unsigned long value)
{
 unsigned long *regs;

 pr_debug("ptrace_write_user(%s[%u], %#lx, %#lx)\n",
   tsk->comm, tsk->pid, offset, value);

 if (offset & 3 || offset >= sizeof(struct user)) {
  pr_debug("  invalid offset 0x%08lx\n", offset);
  return -EIO;
 }

 if (offset >= sizeof(struct pt_regs))
  return 0;

 regs = (unsigned long *)get_user_regs(tsk);
 regs[offset / sizeof(regs[0])] = value;

 return 0;
}
