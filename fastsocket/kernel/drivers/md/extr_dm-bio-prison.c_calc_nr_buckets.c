
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static uint32_t calc_nr_buckets(unsigned nr_cells)
{
 uint32_t n = 128;

 nr_cells /= 4;
 nr_cells = min(nr_cells, 8192u);

 while (n < nr_cells)
  n <<= 1;

 return n;
}
