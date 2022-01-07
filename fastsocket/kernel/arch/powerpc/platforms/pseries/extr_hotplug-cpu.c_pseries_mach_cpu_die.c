
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int idle; int donate_dedicated_cpu; int shared_proc; } ;


 int BUG () ;
 scalar_t__ CPU_STATE_INACTIVE ;
 scalar_t__ CPU_STATE_OFFLINE ;
 scalar_t__ CPU_STATE_ONLINE ;
 int WARN_ON (int) ;
 int __pa (int ) ;
 int extended_cede_processor (int) ;
 TYPE_1__* get_lppaca () ;
 scalar_t__ get_preferred_offline_state (unsigned int) ;
 int get_slb_shadow () ;
 unsigned int hard_smp_processor_id () ;
 int idle_task_exit () ;
 int local_irq_disable () ;
 int pseries_suspend_cpu () ;
 int rtas_stop_self () ;
 int set_cpu_current_state (unsigned int,scalar_t__) ;
 unsigned int smp_processor_id () ;
 int start_secondary_resume () ;
 int unregister_slb_shadow (unsigned int,int ) ;
 int xics_teardown_cpu () ;

__attribute__((used)) static void pseries_mach_cpu_die(void)
{
 unsigned int cpu = smp_processor_id();
 unsigned int hwcpu = hard_smp_processor_id();
 u8 cede_latency_hint = 0;

 local_irq_disable();
 idle_task_exit();
 xics_teardown_cpu();

 if (get_preferred_offline_state(cpu) == CPU_STATE_INACTIVE) {
  set_cpu_current_state(cpu, CPU_STATE_INACTIVE);
  pseries_suspend_cpu();

  cede_latency_hint = 2;

  get_lppaca()->idle = 1;
  if (!get_lppaca()->shared_proc)
   get_lppaca()->donate_dedicated_cpu = 1;

  while (get_preferred_offline_state(cpu) == CPU_STATE_INACTIVE) {
   extended_cede_processor(cede_latency_hint);
  }

  if (!get_lppaca()->shared_proc)
   get_lppaca()->donate_dedicated_cpu = 0;
  get_lppaca()->idle = 0;

  if (get_preferred_offline_state(cpu) == CPU_STATE_ONLINE) {
   unregister_slb_shadow(hwcpu, __pa(get_slb_shadow()));






   start_secondary_resume();
  }
 }


 WARN_ON(get_preferred_offline_state(cpu) != CPU_STATE_OFFLINE);

 set_cpu_current_state(cpu, CPU_STATE_OFFLINE);
 unregister_slb_shadow(hwcpu, __pa(get_slb_shadow()));
 rtas_stop_self();


 BUG();
 for(;;);
}
