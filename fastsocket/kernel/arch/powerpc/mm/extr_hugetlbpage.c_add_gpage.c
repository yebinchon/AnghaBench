
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* gpage_freearray ;
 size_t nr_gpages ;

void add_gpage(unsigned long addr, unsigned long page_size,
 unsigned long number_of_pages)
{
 if (!addr)
  return;
 while (number_of_pages > 0) {
  gpage_freearray[nr_gpages] = addr;
  nr_gpages++;
  number_of_pages--;
  addr += page_size;
 }
}
