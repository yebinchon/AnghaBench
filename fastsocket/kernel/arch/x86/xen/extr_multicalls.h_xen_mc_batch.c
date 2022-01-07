
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long __get_cpu_var ;


 int local_irq_save (unsigned long) ;

__attribute__((used)) static inline void xen_mc_batch(void)
{
 unsigned long flags;

 local_irq_save(flags);
 __get_cpu_var(xen_mc_irq_flags) = flags;
}
