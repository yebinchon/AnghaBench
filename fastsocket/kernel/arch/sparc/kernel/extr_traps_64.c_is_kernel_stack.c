
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union thread_union {int dummy; } thread_union ;
struct task_struct {int dummy; } ;
struct reg_window {int dummy; } ;


 unsigned long PAGE_OFFSET ;
 struct task_struct init_task ;
 scalar_t__ task_stack_page (struct task_struct*) ;

__attribute__((used)) static inline int is_kernel_stack(struct task_struct *task,
      struct reg_window *rw)
{
 unsigned long rw_addr = (unsigned long) rw;
 unsigned long thread_base, thread_end;

 if (rw_addr < PAGE_OFFSET) {
  if (task != &init_task)
   return 0;
 }

 thread_base = (unsigned long) task_stack_page(task);
 thread_end = thread_base + sizeof(union thread_union);
 if (rw_addr >= thread_base &&
     rw_addr < thread_end &&
     !(rw_addr & 0x7UL))
  return 1;

 return 0;
}
