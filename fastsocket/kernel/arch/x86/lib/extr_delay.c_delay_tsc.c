
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int preempt_disable () ;
 int preempt_enable () ;
 int rdtsc_barrier () ;
 int rdtscl (unsigned long) ;
 int rep_nop () ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void delay_tsc(unsigned long loops)
{
 unsigned long bclock, now;
 int cpu;

 preempt_disable();
 cpu = smp_processor_id();
 rdtsc_barrier();
 rdtscl(bclock);
 for (;;) {
  rdtsc_barrier();
  rdtscl(now);
  if ((now - bclock) >= loops)
   break;


  preempt_enable();
  rep_nop();
  preempt_disable();
  if (unlikely(cpu != smp_processor_id())) {
   loops -= (now - bclock);
   cpu = smp_processor_id();
   rdtsc_barrier();
   rdtscl(bclock);
  }
 }
 preempt_enable();
}
