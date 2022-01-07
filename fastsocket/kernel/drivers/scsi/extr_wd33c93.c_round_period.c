
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx_period {int period_ns; } ;



__attribute__((used)) static int
round_period(unsigned int period, const struct sx_period *sx_table)
{
 int x;

 for (x = 1; sx_table[x].period_ns; x++) {
  if ((period <= sx_table[x - 0].period_ns) &&
      (period > sx_table[x - 1].period_ns)) {
   return x;
  }
 }
 return 7;
}
