
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tsk; } ;


 int free_irq (int,int *) ;
 int irqbits ;
 int irqbits_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* vm86_irqs ;

__attribute__((used)) static inline void free_vm86_irq(int irqnumber)
{
 unsigned long flags;

 free_irq(irqnumber, ((void*)0));
 vm86_irqs[irqnumber].tsk = ((void*)0);

 spin_lock_irqsave(&irqbits_lock, flags);
 irqbits &= ~(1 << irqnumber);
 spin_unlock_irqrestore(&irqbits_lock, flags);
}
