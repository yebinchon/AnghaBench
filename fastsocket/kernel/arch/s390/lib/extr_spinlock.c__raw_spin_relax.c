
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int owner_cpu; } ;
typedef TYPE_1__ raw_spinlock_t ;


 int _raw_yield_cpu (unsigned int) ;

void _raw_spin_relax(raw_spinlock_t *lock)
{
 unsigned int cpu = lock->owner_cpu;
 if (cpu != 0)
  _raw_yield_cpu(~cpu);
}
