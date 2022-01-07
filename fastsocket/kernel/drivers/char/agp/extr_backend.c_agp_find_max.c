
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long mem; long agp; } ;


 int PAGE_SHIFT ;
 TYPE_1__* maxes_table ;
 int totalram_pages ;

__attribute__((used)) static int agp_find_max(void)
{
 long memory, index, result;


 memory = totalram_pages >> (20 - PAGE_SHIFT);



 index = 1;

 while ((memory > maxes_table[index].mem) && (index < 8))
  index++;

 result = maxes_table[index - 1].agp +
    ( (memory - maxes_table[index - 1].mem) *
      (maxes_table[index].agp - maxes_table[index - 1].agp)) /
    (maxes_table[index].mem - maxes_table[index - 1].mem);

 result = result << (20 - PAGE_SHIFT);
 return result;
}
