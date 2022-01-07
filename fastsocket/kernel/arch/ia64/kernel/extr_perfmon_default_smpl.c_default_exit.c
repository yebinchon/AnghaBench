
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int DPRINT (char*) ;
 int task_pid_nr (struct task_struct*) ;

__attribute__((used)) static int
default_exit(struct task_struct *task, void *buf, struct pt_regs *regs)
{
 DPRINT(("[%d] exit(%p)\n", task_pid_nr(task), buf));
 return 0;
}
