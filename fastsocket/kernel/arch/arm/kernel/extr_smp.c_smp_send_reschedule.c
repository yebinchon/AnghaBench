
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_RESCHEDULE ;
 int cpumask_of (int) ;
 int send_ipi_message (int ,int ) ;

void smp_send_reschedule(int cpu)
{
 send_ipi_message(cpumask_of(cpu), IPI_RESCHEDULE);
}
