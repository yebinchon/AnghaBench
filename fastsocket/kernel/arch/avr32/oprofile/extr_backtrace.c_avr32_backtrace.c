
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ r7; } ;
struct frame_head {struct frame_head* fp; int lr; } ;


 int current ;
 struct frame_head* dump_user_backtrace (struct frame_head*) ;
 int oprofile_add_trace (int ) ;
 int task_thread_info (int ) ;
 int user_mode (struct pt_regs* const) ;
 scalar_t__ valid_stack_ptr (int ,unsigned long) ;

void avr32_backtrace(struct pt_regs * const regs, unsigned int depth)
{

 struct frame_head *head = (struct frame_head *)(regs->r7);

 if (!user_mode(regs)) {
 } else {

  while (depth-- && head)
   head = dump_user_backtrace(head);
 }
}
