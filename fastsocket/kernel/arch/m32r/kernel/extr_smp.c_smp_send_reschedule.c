
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RESCHEDULE_IPI ;
 int WARN_ON (int ) ;
 int cpu_is_offline (int) ;
 int cpumask_of (int) ;
 int send_IPI_mask (int ,int ,int) ;

void smp_send_reschedule(int cpu_id)
{
 WARN_ON(cpu_is_offline(cpu_id));
 send_IPI_mask(cpumask_of(cpu_id), RESCHEDULE_IPI, 1);
}
