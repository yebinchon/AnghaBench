
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_BASE ;




__attribute__((used)) static int ni_pcidio_ns_to_timer(int *nanosec, int round_mode)
{
 int divider, base;

 base = TIMER_BASE;

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

 *nanosec = base * divider;
 return divider;
}
