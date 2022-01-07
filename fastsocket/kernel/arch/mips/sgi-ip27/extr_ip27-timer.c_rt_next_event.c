
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int ETIME ;
 unsigned long LOCAL_HUB_L (int ) ;
 int LOCAL_HUB_S (scalar_t__,unsigned long) ;
 int PI_COUNT_OFFSET ;
 scalar_t__ PI_RT_COMPARE_A ;
 int PI_RT_COUNT ;
 int cputoslice (unsigned int) ;
 unsigned int smp_processor_id () ;

__attribute__((used)) static int rt_next_event(unsigned long delta, struct clock_event_device *evt)
{
 unsigned int cpu = smp_processor_id();
 int slice = cputoslice(cpu);
 unsigned long cnt;

 cnt = LOCAL_HUB_L(PI_RT_COUNT);
 cnt += delta;
 LOCAL_HUB_S(PI_RT_COMPARE_A + PI_COUNT_OFFSET * slice, cnt);

 return LOCAL_HUB_L(PI_RT_COUNT) >= cnt ? -ETIME : 0;
}
