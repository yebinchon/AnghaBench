
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int dt3k_ns_to_timer(unsigned int timer_base, unsigned int *nanosec,
       unsigned int round_mode)
{
 int divider, base, prescale;




 for (prescale = 0; prescale < 16; prescale++) {
  base = timer_base * (prescale + 1);
  switch (round_mode) {
  case 129:
  default:
   divider = (*nanosec + base / 2) / base;
   break;
  case 130:
   divider = (*nanosec) / base;
   break;
  case 128:
   divider = (*nanosec) / base;
   break;
  }
  if (divider < 65536) {
   *nanosec = divider * base;
   return (prescale << 16) | (divider);
  }
 }

 prescale = 15;
 base = timer_base * (1 << prescale);
 divider = 65535;
 *nanosec = divider * base;
 return (prescale << 16) | (divider);
}
