
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct e820entry {unsigned int type; scalar_t__ addr; scalar_t__ size; } ;
struct TYPE_2__ {int nr_map; struct e820entry* map; } ;


 TYPE_1__ e820 ;

int
e820_any_mapped(u64 start, u64 end, unsigned type)
{
 int i;

 for (i = 0; i < e820.nr_map; i++) {
  struct e820entry *ei = &e820.map[i];

  if (type && ei->type != type)
   continue;
  if (ei->addr >= end || ei->addr + ei->size <= start)
   continue;
  return 1;
 }
 return 0;
}
