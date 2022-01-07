
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct cpuidle_state {int dummy; } ;
struct cpuidle_device {struct cpuidle_state* states; } ;


 int DDR_OPERATION_BASE ;
 int USEC_PER_SEC ;
 int cpu_do_idle () ;
 int do_gettimeofday (struct timeval*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int writel (int,int ) ;

__attribute__((used)) static int kirkwood_enter_idle(struct cpuidle_device *dev,
          struct cpuidle_state *state)
{
 struct timeval before, after;
 int idle_time;

 local_irq_disable();
 do_gettimeofday(&before);
 if (state == &dev->states[0])

  cpu_do_idle();
 else if (state == &dev->states[1]) {







  writel(0x7, DDR_OPERATION_BASE);
  cpu_do_idle();
 }
 do_gettimeofday(&after);
 local_irq_enable();
 idle_time = (after.tv_sec - before.tv_sec) * USEC_PER_SEC +
   (after.tv_usec - before.tv_usec);
 return idle_time;
}
