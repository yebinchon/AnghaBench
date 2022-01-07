
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int rtd_ns_to_timer_base(unsigned int *nanosec,
    int round_mode, int base)
{
 int divider;

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
 if (divider < 2)
  divider = 2;




 *nanosec = base * divider;
 return divider - 1;
}
