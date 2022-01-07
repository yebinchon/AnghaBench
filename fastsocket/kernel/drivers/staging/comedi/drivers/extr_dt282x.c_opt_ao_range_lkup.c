
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_lrange {int dummy; } ;


 struct comedi_lrange const** ao_range_table ;

__attribute__((used)) static const struct comedi_lrange *opt_ao_range_lkup(int x)
{
 if (x < 0 || x >= 5)
  x = 0;
 return ao_range_table[x];
}
