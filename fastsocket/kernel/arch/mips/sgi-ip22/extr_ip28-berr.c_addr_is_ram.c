
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_map; TYPE_1__* map; } ;
struct TYPE_3__ {unsigned long addr; unsigned int size; } ;


 TYPE_2__ boot_mem_map ;

__attribute__((used)) static int addr_is_ram(unsigned long addr, unsigned sz)
{
 int i;

 for (i = 0; i < boot_mem_map.nr_map; i++) {
  unsigned long a = boot_mem_map.map[i].addr;
  if (a <= addr && addr+sz <= a+boot_mem_map.map[i].size)
   return 1;
 }
 return 0;
}
