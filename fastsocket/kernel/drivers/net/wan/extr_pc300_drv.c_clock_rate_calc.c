
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int clock_rate_calc(u32 rate, u32 clock, int *br_io)
{
 int br, tc;
 int br_pwr, error;

 *br_io = 0;

 if (rate == 0)
  return (0);

 for (br = 0, br_pwr = 1; br <= 9; br++, br_pwr <<= 1) {
  if ((tc = clock / br_pwr / rate) <= 0xff) {
   *br_io = br;
   break;
  }
 }

 if (tc <= 0xff) {
  error = ((rate - (clock / br_pwr / rate)) / rate) * 1000;

  if (error < -10 || error > 10)
   return (-1);
  else
   return (tc);
 } else {
  return (-1);
 }
}
