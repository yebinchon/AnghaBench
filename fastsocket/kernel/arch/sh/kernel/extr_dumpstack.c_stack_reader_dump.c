
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct task_struct {int dummy; } ;
struct stacktrace_ops {int (* address ) (void*,unsigned long,int) ;} ;
struct pt_regs {int dummy; } ;


 int THREAD_SIZE ;
 scalar_t__ __kernel_text_address (unsigned long) ;
 int kstack_end (unsigned long*) ;
 int print_ftrace_graph_addr (unsigned long,void*,struct stacktrace_ops const*,struct thread_info*,int*) ;
 int stub1 (void*,unsigned long,int) ;

void
stack_reader_dump(struct task_struct *task, struct pt_regs *regs,
    unsigned long *sp, const struct stacktrace_ops *ops,
    void *data)
{
 struct thread_info *context;
 int graph = 0;

 context = (struct thread_info *)
  ((unsigned long)sp & (~(THREAD_SIZE - 1)));

 while (!kstack_end(sp)) {
  unsigned long addr = *sp++;

  if (__kernel_text_address(addr)) {
   ops->address(data, addr, 1);

   print_ftrace_graph_addr(addr, data, ops,
      context, &graph);
  }
 }
}
