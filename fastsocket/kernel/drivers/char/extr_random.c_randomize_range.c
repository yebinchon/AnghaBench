
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long get_random_int () ;

unsigned long
randomize_range(unsigned long start, unsigned long end, unsigned long len)
{
 unsigned long range = end - len - start;

 if (end <= start + len)
  return 0;
 return PAGE_ALIGN(get_random_int() % range + start);
}
