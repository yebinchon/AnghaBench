
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 void* cvmx_bootmem_alloc_range (int ,int ,int ,int ) ;

void *cvmx_bootmem_alloc(uint64_t size, uint64_t alignment)
{
 return cvmx_bootmem_alloc_range(size, alignment, 0, 0);
}
