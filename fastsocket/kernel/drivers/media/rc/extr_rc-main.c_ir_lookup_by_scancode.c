
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_map {int len; TYPE_1__* scan; } ;
struct TYPE_2__ {unsigned int scancode; } ;



__attribute__((used)) static unsigned int ir_lookup_by_scancode(const struct rc_map *rc_map,
       unsigned int scancode)
{
 int start = 0;
 int end = rc_map->len - 1;
 int mid;

 while (start <= end) {
  mid = (start + end) / 2;
  if (rc_map->scan[mid].scancode < scancode)
   start = mid + 1;
  else if (rc_map->scan[mid].scancode > scancode)
   end = mid - 1;
  else
   return mid;
 }

 return -1U;
}
