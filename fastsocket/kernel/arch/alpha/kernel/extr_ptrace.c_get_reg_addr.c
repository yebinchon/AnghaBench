
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_3__ {unsigned long usp; unsigned long unique; } ;
struct TYPE_4__ {TYPE_1__ pcb; } ;


 int* regoff ;
 unsigned long* task_stack_page (struct task_struct*) ;
 TYPE_2__* task_thread_info (struct task_struct*) ;
 unsigned long zero ;

__attribute__((used)) static unsigned long *
get_reg_addr(struct task_struct * task, unsigned long regno)
{
 unsigned long *addr;

 if (regno == 30) {
  addr = &task_thread_info(task)->pcb.usp;
 } else if (regno == 65) {
  addr = &task_thread_info(task)->pcb.unique;
 } else if (regno == 31 || regno > 65) {
  zero = 0;
  addr = &zero;
 } else {
  addr = task_stack_page(task) + regoff[regno];
 }
 return addr;
}
