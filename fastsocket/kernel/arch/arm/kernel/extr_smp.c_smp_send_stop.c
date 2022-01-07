
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int IPI_CPU_STOP ;
 int cpu_clear (int ,int ) ;
 int cpu_online_map ;
 int send_ipi_message (int *,int ) ;
 int smp_processor_id () ;

void smp_send_stop(void)
{
 cpumask_t mask = cpu_online_map;
 cpu_clear(smp_processor_id(), mask);
 send_ipi_message(&mask, IPI_CPU_STOP);
}
