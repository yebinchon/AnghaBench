
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int udelay_val; } ;
struct TYPE_3__ {int (* smp_finish ) () ;int (* init_secondary ) () ;} ;


 int TCBIND_CURTC ;
 int calibrate_delay () ;
 int cpu_callin_map ;
 TYPE_2__* cpu_data ;
 int cpu_idle () ;
 int cpu_probe () ;
 int cpu_report () ;
 int cpu_set (unsigned int,int ) ;
 int loops_per_jiffy ;
 int mips_clockevent_init () ;
 TYPE_1__* mp_ops ;
 int notify_cpu_starting (unsigned int) ;
 int per_cpu_trap_init () ;
 int preempt_disable () ;
 int read_c0_tcbind () ;
 int set_cpu_sibling_map (unsigned int) ;
 unsigned int smp_processor_id () ;
 int stub1 () ;
 int stub2 () ;
 int synchronise_count_slave () ;

void start_secondary(void)
{
 unsigned int cpu;





 cpu_probe();
 cpu_report();
 per_cpu_trap_init();
 mips_clockevent_init();
 mp_ops->init_secondary();






 calibrate_delay();
 preempt_disable();
 cpu = smp_processor_id();
 cpu_data[cpu].udelay_val = loops_per_jiffy;

 notify_cpu_starting(cpu);

 mp_ops->smp_finish();
 set_cpu_sibling_map(cpu);

 cpu_set(cpu, cpu_callin_map);

 synchronise_count_slave();

 cpu_idle();
}
