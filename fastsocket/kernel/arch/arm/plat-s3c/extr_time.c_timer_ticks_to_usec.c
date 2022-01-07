
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_USEC_SHIFT ;
 unsigned long timer_usec_ticks ;

__attribute__((used)) static inline unsigned long timer_ticks_to_usec(unsigned long ticks)
{
 unsigned long res;

 res = ticks * timer_usec_ticks;
 res += 1 << (TIMER_USEC_SHIFT - 4);

 return res >> TIMER_USEC_SHIFT;
}
