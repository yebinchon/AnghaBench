
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRIG_ROUND_MASK ;



__attribute__((used)) static inline void i8253_cascade_ns_to_timer_2div(int i8253_osc_base,
        unsigned int *d1,
        unsigned int *d2,
        unsigned int *nanosec,
        int round_mode)
{
 unsigned int divider;
 unsigned int div1, div2;
 unsigned int div1_glb, div2_glb, ns_glb;
 unsigned int div1_lub, div2_lub, ns_lub;
 unsigned int ns;
 unsigned int start;
 unsigned int ns_low, ns_high;
 static const unsigned int max_count = 0x10000;



 div1 = *d1 ? *d1 : max_count;
 div2 = *d2 ? *d2 : max_count;
 divider = div1 * div2;
 if (div1 * div2 * i8253_osc_base == *nanosec &&
     div1 > 1 && div1 <= max_count && div2 > 1 && div2 <= max_count &&

     divider > div1 && divider > div2 &&
     divider * i8253_osc_base > divider &&
     divider * i8253_osc_base > i8253_osc_base) {
  return;
 }

 divider = *nanosec / i8253_osc_base;

 div1_lub = div2_lub = 0;
 div1_glb = div2_glb = 0;

 ns_glb = 0;
 ns_lub = 0xffffffff;

 div2 = max_count;
 start = divider / div2;
 if (start < 2)
  start = 2;
 for (div1 = start; div1 <= divider / div1 + 1 && div1 <= max_count;
      div1++) {
  for (div2 = divider / div1;
       div1 * div2 <= divider + div1 + 1 && div2 <= max_count;
       div2++) {
   ns = i8253_osc_base * div1 * div2;
   if (ns <= *nanosec && ns > ns_glb) {
    ns_glb = ns;
    div1_glb = div1;
    div2_glb = div2;
   }
   if (ns >= *nanosec && ns < ns_lub) {
    ns_lub = ns;
    div1_lub = div1;
    div2_lub = div2;
   }
  }
 }

 round_mode &= TRIG_ROUND_MASK;
 switch (round_mode) {
 case 129:
 default:
  ns_high = div1_lub * div2_lub * i8253_osc_base;
  ns_low = div1_glb * div2_glb * i8253_osc_base;
  if (ns_high - *nanosec < *nanosec - ns_low) {
   div1 = div1_lub;
   div2 = div2_lub;
  } else {
   div1 = div1_glb;
   div2 = div2_glb;
  }
  break;
 case 128:
  div1 = div1_lub;
  div2 = div2_lub;
  break;
 case 130:
  div1 = div1_glb;
  div2 = div2_glb;
  break;
 }

 *nanosec = div1 * div2 * i8253_osc_base;
 *d1 = div1 & 0xffff;
 *d2 = div2 & 0xffff;
 return;
}
