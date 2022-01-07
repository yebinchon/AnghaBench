
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int BUG () ;





 int HYPERVISOR_vcpu_op (int ,int,int *) ;
 int VCPUOP_stop_periodic_timer ;
 int VCPUOP_stop_singleshot_timer ;
 int WARN_ON (int) ;
 int smp_processor_id () ;

__attribute__((used)) static void xen_vcpuop_set_mode(enum clock_event_mode mode,
    struct clock_event_device *evt)
{
 int cpu = smp_processor_id();

 switch (mode) {
 case 131:
  WARN_ON(1);
  break;

 case 132:
  if (HYPERVISOR_vcpu_op(VCPUOP_stop_periodic_timer, cpu, ((void*)0)))
   BUG();
  break;

 case 128:
 case 129:
  if (HYPERVISOR_vcpu_op(VCPUOP_stop_singleshot_timer, cpu, ((void*)0)) ||
      HYPERVISOR_vcpu_op(VCPUOP_stop_periodic_timer, cpu, ((void*)0)))
   BUG();
  break;
 case 130:
  break;
 }
}
