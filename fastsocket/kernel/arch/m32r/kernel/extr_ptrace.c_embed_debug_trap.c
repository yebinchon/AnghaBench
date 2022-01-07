
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int next_insn ;
typedef int code ;


 int access_process_vm (struct task_struct*,unsigned long,unsigned long*,int,int) ;
 scalar_t__ register_debug_trap (struct task_struct*,unsigned long,unsigned long,unsigned long*) ;

__attribute__((used)) static int
embed_debug_trap(struct task_struct *child, unsigned long next_pc)
{
 unsigned long next_insn, code;
 unsigned long addr = next_pc & ~3;

 if (access_process_vm(child, addr, &next_insn, sizeof(next_insn), 0)
     != sizeof(next_insn)) {
  return -1;
 }


 if (register_debug_trap(child, next_pc, next_insn, &code)) {
  return -1;
 }
 if (access_process_vm(child, addr, &code, sizeof(code), 1)
     != sizeof(code)) {
  return -1;
 }
 return 0;
}
