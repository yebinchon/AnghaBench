
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TIMER_BASE ;

 unsigned int TRIG_ROUND_MASK ;



__attribute__((used)) static unsigned int get_divisor(unsigned int ns, unsigned int flags)
{
 unsigned int divisor;

 switch (flags & TRIG_ROUND_MASK) {
 case 128:
  divisor = (ns + TIMER_BASE - 1) / TIMER_BASE;
  break;
 case 130:
  divisor = ns / TIMER_BASE;
  break;
 case 129:
 default:
  divisor = (ns + TIMER_BASE / 2) / TIMER_BASE;
  break;
 }
 return divisor;
}
