
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int __raw_spin_lock_flags (int *,unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_disable () ;
 TYPE_1__ rtas ;

__attribute__((used)) static unsigned long lock_rtas(void)
{
 unsigned long flags;

 local_irq_save(flags);
 preempt_disable();
 __raw_spin_lock_flags(&rtas.lock, flags);
 return flags;
}
