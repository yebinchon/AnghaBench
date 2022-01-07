
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {struct pt_regs* kregs; struct pt_regs* uregs; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 scalar_t__ THREAD_SIZE ;
 int clear_used_math () ;
 TYPE_2__* current ;
 struct pt_regs fake_swapper_regs ;
 TYPE_2__* last_task_used_math ;

void flush_thread(void)
{
 if(current->thread.kregs==&fake_swapper_regs) {
          current->thread.kregs =
             ((struct pt_regs *)(THREAD_SIZE + (unsigned long) current) - 1);
   current->thread.uregs = current->thread.kregs;
 }
}
