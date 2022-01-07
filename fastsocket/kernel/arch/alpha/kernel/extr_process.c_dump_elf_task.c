
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int elf_greg_t ;


 int dump_elf_thread (int *,int ,int ) ;
 int task_pt_regs (struct task_struct*) ;
 int task_thread_info (struct task_struct*) ;

int
dump_elf_task(elf_greg_t *dest, struct task_struct *task)
{
 dump_elf_thread(dest, task_pt_regs(task), task_thread_info(task));
 return 1;
}
