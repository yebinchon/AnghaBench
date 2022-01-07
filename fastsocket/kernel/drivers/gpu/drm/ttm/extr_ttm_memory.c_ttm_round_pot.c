
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PAGE_ALIGN (size_t) ;
 size_t PAGE_SIZE ;

size_t ttm_round_pot(size_t size)
{
 if ((size & (size - 1)) == 0)
  return size;
 else if (size > PAGE_SIZE)
  return PAGE_ALIGN(size);
 else {
  size_t tmp_size = 4;

  while (tmp_size < size)
   tmp_size <<= 1;

  return tmp_size;
 }
 return 0;
}
