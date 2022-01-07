
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_clear (int ,int ) ;
 int cpu_online_map ;
 int cpu_wait () ;
 int smp_processor_id () ;
 int stub1 () ;

__attribute__((used)) static void stop_this_cpu(void *dummy)
{



 cpu_clear(smp_processor_id(), cpu_online_map);
 for (;;) {
  if (cpu_wait)
   (*cpu_wait)();
 }
}
