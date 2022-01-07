
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct e820entry {scalar_t__ size; scalar_t__ addr; } ;
struct TYPE_2__ {int nr_map; struct e820entry* map; } ;


 TYPE_1__ e820 ;
 int resource_clip (struct resource*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void remove_e820_regions(struct resource *avail)
{
 int i;
 struct e820entry *entry;

 for (i = 0; i < e820.nr_map; i++) {
  entry = &e820.map[i];

  resource_clip(avail, entry->addr,
         entry->addr + entry->size - 1);
 }
}
