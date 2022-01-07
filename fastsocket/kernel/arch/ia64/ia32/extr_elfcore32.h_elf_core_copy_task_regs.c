
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int elf_gregset_t ;


 int ELF_CORE_COPY_REGS (int ,int ) ;
 int task_pt_regs (struct task_struct*) ;

__attribute__((used)) static inline int elf_core_copy_task_regs(struct task_struct *t,
       elf_gregset_t* elfregs)
{
 ELF_CORE_COPY_REGS((*elfregs), task_pt_regs(t));
 return 1;
}
