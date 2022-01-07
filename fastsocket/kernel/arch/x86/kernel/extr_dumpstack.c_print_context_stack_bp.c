
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct stacktrace_ops {int (* address ) (void*,unsigned long,int) ;} ;
struct stack_frame {unsigned long return_address; struct stack_frame* next_frame; } ;


 int __kernel_text_address (unsigned long) ;
 int print_ftrace_graph_addr (unsigned long,void*,struct stacktrace_ops const*,struct thread_info*,int*) ;
 int stub1 (void*,unsigned long,int) ;
 scalar_t__ valid_stack_ptr (struct thread_info*,unsigned long*,int,unsigned long*) ;

unsigned long
print_context_stack_bp(struct thread_info *tinfo,
         unsigned long *stack, unsigned long bp,
         const struct stacktrace_ops *ops, void *data,
         unsigned long *end, int *graph)
{
 struct stack_frame *frame = (struct stack_frame *)bp;
 unsigned long *ret_addr = &frame->return_address;

 while (valid_stack_ptr(tinfo, ret_addr, sizeof(*ret_addr), end)) {
  unsigned long addr = *ret_addr;

  if (!__kernel_text_address(addr))
   break;

  ops->address(data, addr, 1);
  frame = frame->next_frame;
  ret_addr = &frame->return_address;
  print_ftrace_graph_addr(addr, data, ops, tinfo, graph);
 }

 return (unsigned long)frame;
}
