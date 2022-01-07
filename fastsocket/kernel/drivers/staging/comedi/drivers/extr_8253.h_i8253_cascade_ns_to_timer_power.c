
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRIG_ROUND_MASK ;



__attribute__((used)) static inline void i8253_cascade_ns_to_timer_power(int i8253_osc_base,
         unsigned int *d1,
         unsigned int *d2,
         unsigned int *nanosec,
         int round_mode)
{
 int div1, div2;
 int base;

 for (div1 = 2; div1 <= (1 << 16); div1 <<= 1) {
  base = i8253_osc_base * div1;
  round_mode &= TRIG_ROUND_MASK;
  switch (round_mode) {
  case 129:
  default:
   div2 = (*nanosec + base / 2) / base;
   break;
  case 130:
   div2 = (*nanosec) / base;
   break;
  case 128:
   div2 = (*nanosec + base - 1) / base;
   break;
  }
  if (div2 < 2)
   div2 = 2;
  if (div2 <= 65536) {
   *nanosec = div2 * base;
   *d1 = div1 & 0xffff;
   *d2 = div2 & 0xffff;
   return;
  }
 }


 div1 = 0x10000;
 div2 = 0x10000;
 *nanosec = div1 * div2 * i8253_osc_base;
 *d1 = div1 & 0xffff;
 *d2 = div2 & 0xffff;
}
