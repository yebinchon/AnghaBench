
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPMC_CHUNK_SHIFT ;

__attribute__((used)) static unsigned long gpmc_mem_align(unsigned long size)
{
 int order;

 size = (size - 1) >> (GPMC_CHUNK_SHIFT - 1);
 order = GPMC_CHUNK_SHIFT - 1;
 do {
  size >>= 1;
  order++;
 } while (size);
 size = 1 << order;
 return size;
}
