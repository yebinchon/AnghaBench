
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int dt282x_ns_to_timer(int *nanosec, int round_mode)
{
 int prescale, base, divider;

 for (prescale = 0; prescale < 16; prescale++) {
  if (prescale == 1)
   continue;
  base = 250 * (1 << prescale);
  switch (round_mode) {
  case 129:
  default:
   divider = (*nanosec + base / 2) / base;
   break;
  case 130:
   divider = (*nanosec) / base;
   break;
  case 128:
   divider = (*nanosec + base - 1) / base;
   break;
  }
  if (divider < 256) {
   *nanosec = divider * base;
   return (prescale << 8) | (255 - divider);
  }
 }
 base = 250 * (1 << 15);
 divider = 255;
 *nanosec = divider * base;
 return (15 << 8) | (255 - divider);
}
