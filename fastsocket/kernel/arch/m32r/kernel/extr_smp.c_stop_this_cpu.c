
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M32R_ICU_IMASK_PORTL ;
 int cpu_clear (int,int ) ;
 int cpu_online_map ;
 int inl (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int outl (int ,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void stop_this_cpu(void *dummy)
{
 int cpu_id = smp_processor_id();




 cpu_clear(cpu_id, cpu_online_map);






 local_irq_disable();
 outl(0, M32R_ICU_IMASK_PORTL);
 inl(M32R_ICU_IMASK_PORTL);
 local_irq_enable();

 for ( ; ; );
}
