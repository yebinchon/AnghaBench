
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 scalar_t__ signal_processor (int ,int ) ;
 scalar_t__ sigp_busy ;
 int sigp_stop ;
 int smp_processor_id () ;

__attribute__((used)) static void smp_stop_cpu(void)
{
 while (signal_processor(smp_processor_id(), sigp_stop) == sigp_busy)
  cpu_relax();
}
