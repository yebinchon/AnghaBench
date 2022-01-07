
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int access_process_vm (struct task_struct*,unsigned long,void*,int,int) ;

__attribute__((used)) static int
swap_insn(struct task_struct *task, unsigned long addr,
   void *old_insn, void *new_insn, int size)
{
 int ret;

 ret = access_process_vm(task, addr, old_insn, size, 0);
 if (ret == size)
  ret = access_process_vm(task, addr, new_insn, size, 1);
 return ret;
}
