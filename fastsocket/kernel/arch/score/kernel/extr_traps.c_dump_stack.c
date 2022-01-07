
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int task; } ;
struct TYPE_3__ {scalar_t__* regs; } ;


 TYPE_2__* current_thread_info () ;
 TYPE_1__* get_irq_regs () ;
 int show_stack (int ,long*) ;

void dump_stack(void)
{
 show_stack(current_thread_info()->task,
     (long *) get_irq_regs()->regs[0]);
}
