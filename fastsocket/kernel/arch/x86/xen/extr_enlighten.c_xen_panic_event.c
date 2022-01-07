
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_shutdown {int reason; } ;
struct notifier_block {int dummy; } ;


 int BUG () ;
 scalar_t__ HYPERVISOR_sched_op (int ,struct sched_shutdown*) ;
 int NOTIFY_DONE ;
 int SCHEDOP_shutdown ;
 int SHUTDOWN_crash ;

__attribute__((used)) static int
xen_panic_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct sched_shutdown r = { .reason = SHUTDOWN_crash};

 if (HYPERVISOR_sched_op(SCHEDOP_shutdown, &r))
  BUG();
 return NOTIFY_DONE;
}
