
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int HZ ;
 unsigned int NR_CPUS ;
 int __round_jiffies_relative (int,unsigned int) ;
 int cpu_online_map ;
 int do_event_scan () ;
 int enable_surveillance (int) ;
 int event_scan_delay ;
 int event_scan_work ;
 unsigned int first_cpu (int ) ;
 scalar_t__ first_pass ;
 int get_online_cpus () ;
 unsigned int next_cpu (int ,int ) ;
 int pr_debug (char*) ;
 int put_online_cpus () ;
 int rtas_event_scan_rate ;
 int schedule_delayed_work_on (unsigned int,int *,int ) ;
 int smp_processor_id () ;
 int surveillance_timeout ;

__attribute__((used)) static void rtas_event_scan(struct work_struct *w)
{
 unsigned int cpu;

 do_event_scan();

 get_online_cpus();

 cpu = next_cpu(smp_processor_id(), cpu_online_map);
 if (cpu == NR_CPUS) {
  cpu = first_cpu(cpu_online_map);

  if (first_pass) {
   first_pass = 0;
   event_scan_delay = 30*HZ/rtas_event_scan_rate;

   if (surveillance_timeout != -1) {
    pr_debug("rtasd: enabling surveillance\n");
    enable_surveillance(surveillance_timeout);
    pr_debug("rtasd: surveillance enabled\n");
   }
  }
 }

 schedule_delayed_work_on(cpu, &event_scan_work,
  __round_jiffies_relative(event_scan_delay, cpu));

 put_online_cpus();
}
