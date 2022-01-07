
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct op_counter_config {int dummy; } ;
struct TYPE_4__ {int debug_bus_control; int group_control; } ;
struct TYPE_3__ {int cpu; } ;


 int NUM_INTERVAL_CYC ;
 scalar_t__ SPU_PROFILING_CYCLES ;
 scalar_t__ SPU_PROFILING_EVENTS ;
 int cbe_cpu_to_node (size_t) ;
 int cbe_disable_pm (size_t) ;
 int cbe_disable_pm_interrupts (size_t) ;
 scalar_t__ cbe_get_hw_thread_id (size_t) ;
 int cbe_write_pm (size_t,int ,int ) ;
 int ctr_enabled ;
 int debug_bus_control ;
 int group_control ;
 int num_counters ;
 int pm_interval ;
 TYPE_2__ pm_regs ;
 int pm_rtas_activate_signals (int ,size_t) ;
 TYPE_1__* pm_signal ;
 int pm_start_stop ;
 scalar_t__ profiling_mode ;
 size_t smp_processor_id () ;
 int write_pm_cntrl (size_t) ;

__attribute__((used)) static int cell_cpu_setup(struct op_counter_config *cntr)
{
 u32 cpu = smp_processor_id();
 u32 num_enabled = 0;
 int i;
 int ret;





 if (profiling_mode == SPU_PROFILING_CYCLES)
  return 0;




 if (cbe_get_hw_thread_id(cpu))
  return 0;


 cbe_disable_pm(cpu);
 cbe_disable_pm_interrupts(cpu);

 cbe_write_pm(cpu, pm_start_stop, 0);
 cbe_write_pm(cpu, group_control, pm_regs.group_control);
 cbe_write_pm(cpu, debug_bus_control, pm_regs.debug_bus_control);
 write_pm_cntrl(cpu);

 for (i = 0; i < num_counters; ++i) {
  if (ctr_enabled & (1 << i)) {
   pm_signal[num_enabled].cpu = cbe_cpu_to_node(cpu);
   num_enabled++;
  }
 }





 if (profiling_mode == SPU_PROFILING_EVENTS) {



  ret = pm_rtas_activate_signals(cbe_cpu_to_node(cpu),
            num_enabled+2);



  cbe_write_pm(cpu, pm_interval, NUM_INTERVAL_CYC);
  return ret;
 } else
  return pm_rtas_activate_signals(cbe_cpu_to_node(cpu),
      num_enabled);
}
