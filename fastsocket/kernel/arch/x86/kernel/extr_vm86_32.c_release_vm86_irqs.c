
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {struct task_struct* tsk; } ;


 int FIRST_VM86_IRQ ;
 int LAST_VM86_IRQ ;
 int free_vm86_irq (int) ;
 TYPE_1__* vm86_irqs ;

void release_vm86_irqs(struct task_struct *task)
{
 int i;
 for (i = FIRST_VM86_IRQ ; i <= LAST_VM86_IRQ; i++)
     if (vm86_irqs[i].tsk == task)
  free_vm86_irq(i);
}
