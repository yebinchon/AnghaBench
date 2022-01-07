
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_set_singleshot_timer {int flags; int timeout_abs_ns; } ;
struct clock_event_device {scalar_t__ mode; } ;


 int BUG_ON (int) ;
 scalar_t__ CLOCK_EVT_MODE_ONESHOT ;
 int ETIME ;
 int HYPERVISOR_vcpu_op (int ,int,struct vcpu_set_singleshot_timer*) ;
 int VCPUOP_set_singleshot_timer ;
 int VCPU_SSHOTTMR_future ;
 int WARN_ON (int) ;
 int get_abs_timeout (unsigned long) ;
 int smp_processor_id () ;

__attribute__((used)) static int xen_vcpuop_set_next_event(unsigned long delta,
         struct clock_event_device *evt)
{
 int cpu = smp_processor_id();
 struct vcpu_set_singleshot_timer single;
 int ret;

 WARN_ON(evt->mode != CLOCK_EVT_MODE_ONESHOT);

 single.timeout_abs_ns = get_abs_timeout(delta);
 single.flags = VCPU_SSHOTTMR_future;

 ret = HYPERVISOR_vcpu_op(VCPUOP_set_singleshot_timer, cpu, &single);

 BUG_ON(ret != 0 && ret != -ETIME);

 return ret;
}
