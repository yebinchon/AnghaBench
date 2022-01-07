
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int dummy; } ;
typedef int irqreturn_t ;


 int arcmsr_interrupt (struct AdapterControlBlock*) ;

__attribute__((used)) static irqreturn_t arcmsr_do_interrupt(int irq, void *dev_id)
{
 irqreturn_t handle_state;
 struct AdapterControlBlock *acb = dev_id;

 handle_state = arcmsr_interrupt(acb);
 return handle_state;
}
