
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct switch_stack {int fp; } ;
typedef int elf_fpreg_t ;


 int memcpy (int *,int ,int) ;
 scalar_t__ task_pt_regs (struct task_struct*) ;

int
dump_elf_task_fp(elf_fpreg_t *dest, struct task_struct *task)
{
 struct switch_stack *sw = (struct switch_stack *)task_pt_regs(task) - 1;
 memcpy(dest, sw->fp, 32 * 8);
 return 1;
}
