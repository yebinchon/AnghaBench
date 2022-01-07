
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int PM_TIMER_FREQUENCY ;
 int div64_u64 (int,int) ;

__attribute__((used)) static s64 us_to_pm_timer_ticks(s64 t)
{
 return div64_u64(t * PM_TIMER_FREQUENCY, 1000000);
}
