
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct stacktrace_ops {int (* address ) (void*,unsigned long,int) ;} ;
struct stack_frame {struct stack_frame* next_frame; } ;


 scalar_t__ __kernel_text_address (unsigned long) ;
 int print_ftrace_graph_addr (unsigned long,void*,struct stacktrace_ops const*,struct thread_info*,int*) ;
 int stub1 (void*,unsigned long,int) ;
 int stub2 (void*,unsigned long,int) ;
 scalar_t__ valid_stack_ptr (struct thread_info*,unsigned long*,int,unsigned long*) ;

unsigned long
print_context_stack(struct thread_info *tinfo,
  unsigned long *stack, unsigned long bp,
  const struct stacktrace_ops *ops, void *data,
  unsigned long *end, int *graph)
{
 struct stack_frame *frame = (struct stack_frame *)bp;

 while (valid_stack_ptr(tinfo, stack, sizeof(*stack), end)) {
  unsigned long addr;

  addr = *stack;
  if (__kernel_text_address(addr)) {
   if ((unsigned long) stack == bp + sizeof(long)) {
    ops->address(data, addr, 1);
    frame = frame->next_frame;
    bp = (unsigned long) frame;
   } else {
    ops->address(data, addr, 0);
   }
   print_ftrace_graph_addr(addr, data, ops, tinfo, graph);
  }
  stack++;
 }
 return bp;
}
