
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROUNDING ;
 int cpu_khz ;

__attribute__((used)) static int guess_fsb(int mult)
{
 int speed = cpu_khz / 1000;
 int i;
 int speeds[] = { 666, 1000, 1333, 2000 };
 int f_max, f_min;

 for (i = 0; i < 4; i++) {
  f_max = ((speeds[i] * mult) + 50) / 100;
  f_max += (ROUNDING / 2);
  f_min = f_max - ROUNDING;
  if ((speed <= f_max) && (speed >= f_min))
   return speeds[i] / 10;
 }
 return 0;
}
