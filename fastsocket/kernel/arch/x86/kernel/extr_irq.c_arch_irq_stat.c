
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ atomic_read (int *) ;
 int irq_err_count ;
 int irq_mis_count ;

u64 arch_irq_stat(void)
{
 u64 sum = atomic_read(&irq_err_count);




 return sum;
}
