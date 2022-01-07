
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_bytes; } ;


 TYPE_1__* sp_banks ;

unsigned long probe_memory(void)
{
 unsigned long total = 0;
 int i;

 for (i = 0; sp_banks[i].num_bytes; i++)
  total += sp_banks[i].num_bytes;

 return total;
}
