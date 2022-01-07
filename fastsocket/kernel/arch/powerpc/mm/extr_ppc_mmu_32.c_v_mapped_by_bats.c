
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long phys_addr_t ;
struct TYPE_2__ {unsigned long start; unsigned long limit; unsigned long phys; } ;


 TYPE_1__* bat_addrs ;

phys_addr_t v_mapped_by_bats(unsigned long va)
{
 int b;
 for (b = 0; b < 4; ++b)
  if (va >= bat_addrs[b].start && va < bat_addrs[b].limit)
   return bat_addrs[b].phys + (va - bat_addrs[b].start);
 return 0;
}
