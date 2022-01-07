
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_lrange {int dummy; } ;


 struct comedi_lrange const** ai_range_pgl_table ;
 struct comedi_lrange const** ai_range_table ;

__attribute__((used)) static const struct comedi_lrange *opt_ai_range_lkup(int ispgl, int x)
{
 if (ispgl) {
  if (x < 0 || x >= 2)
   x = 0;
  return ai_range_pgl_table[x];
 } else {
  if (x < 0 || x >= 4)
   x = 0;
  return ai_range_table[x];
 }
}
