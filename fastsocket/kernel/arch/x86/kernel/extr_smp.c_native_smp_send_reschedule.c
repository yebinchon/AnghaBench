
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* send_IPI_mask ) (int ,int ) ;} ;


 int RESCHEDULE_VECTOR ;
 int WARN_ON (int) ;
 TYPE_1__* apic ;
 int cpu_is_offline (int) ;
 int cpumask_of (int) ;
 int stub1 (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void native_smp_send_reschedule(int cpu)
{
 if (unlikely(cpu_is_offline(cpu))) {
  WARN_ON(1);
  return;
 }
 apic->send_IPI_mask(cpumask_of(cpu), RESCHEDULE_VECTOR);
}
