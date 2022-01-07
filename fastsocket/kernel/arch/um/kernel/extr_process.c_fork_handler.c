
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int regs; } ;
struct TYPE_6__ {TYPE_1__ regs; int * prev_sched; } ;
struct TYPE_7__ {TYPE_2__ thread; } ;


 int arch_switch_to (TYPE_3__*) ;
 TYPE_3__* current ;
 int force_flush_all () ;
 int interrupt_end () ;
 int schedule_tail (int *) ;
 int userspace (int *) ;

void fork_handler(void)
{
 force_flush_all();

 schedule_tail(current->thread.prev_sched);






 arch_switch_to(current);

 current->thread.prev_sched = ((void*)0);


 interrupt_end();

 userspace(&current->thread.regs.regs);
}
