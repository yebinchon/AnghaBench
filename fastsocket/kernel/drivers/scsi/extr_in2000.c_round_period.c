
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period_ns; } ;


 TYPE_1__* sx_table ;

__attribute__((used)) static int round_period(unsigned int period)
{
 int x;

 for (x = 1; sx_table[x].period_ns; x++) {
  if ((period <= sx_table[x - 0].period_ns) && (period > sx_table[x - 1].period_ns)) {
   return x;
  }
 }
 return 7;
}
