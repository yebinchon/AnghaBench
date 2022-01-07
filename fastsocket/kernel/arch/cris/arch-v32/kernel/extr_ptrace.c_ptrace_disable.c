
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pid; } ;


 int PT_CCS ;
 int PT_SPC ;
 unsigned long SBIT_USER ;
 int deconfigure_bp (int ) ;
 unsigned long get_reg (struct task_struct*,int ) ;
 int put_reg (struct task_struct*,int ,unsigned long) ;

void
ptrace_disable(struct task_struct *child)
{
 unsigned long tmp;


 tmp = get_reg(child, PT_CCS) & ~SBIT_USER;
 put_reg(child, PT_CCS, tmp);
 put_reg(child, PT_SPC, 0);


 deconfigure_bp(child->pid);
}
