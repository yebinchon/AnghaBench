
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int elf_gregset_t ;


 int elf_dump_regs (int ,int ) ;
 int task_pt_regs (struct task_struct*) ;

int dump_task_regs(struct task_struct *tsk, elf_gregset_t *regs)
{
 elf_dump_regs(*regs, task_pt_regs(tsk));
 return 1;
}
