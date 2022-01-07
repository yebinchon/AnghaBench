
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stacktrace_ops {int (* address ) (void*,unsigned long,int) ;} ;
struct pt_regs {int dummy; } ;
struct dwarf_frame {unsigned long return_addr; } ;


 int dwarf_frame_free_regs (struct dwarf_frame*) ;
 int dwarf_frame_pool ;
 struct dwarf_frame* dwarf_unwind_stack (unsigned long,struct dwarf_frame*) ;
 int mempool_free (struct dwarf_frame*,int ) ;
 int stub1 (void*,unsigned long,int) ;

__attribute__((used)) static void dwarf_unwinder_dump(struct task_struct *task,
    struct pt_regs *regs,
    unsigned long *sp,
    const struct stacktrace_ops *ops,
    void *data)
{
 struct dwarf_frame *frame, *_frame;
 unsigned long return_addr;

 _frame = ((void*)0);
 return_addr = 0;

 while (1) {
  frame = dwarf_unwind_stack(return_addr, _frame);

  if (_frame) {
   dwarf_frame_free_regs(_frame);
   mempool_free(_frame, dwarf_frame_pool);
  }

  _frame = frame;

  if (!frame || !frame->return_addr)
   break;

  return_addr = frame->return_addr;
  ops->address(data, return_addr, 1);
 }
}
