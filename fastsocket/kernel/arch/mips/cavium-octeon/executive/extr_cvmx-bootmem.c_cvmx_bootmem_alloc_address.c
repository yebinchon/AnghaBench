
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 void* cvmx_bootmem_alloc_range (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void *cvmx_bootmem_alloc_address(uint64_t size, uint64_t address,
     uint64_t alignment)
{
 return cvmx_bootmem_alloc_range(size, alignment, address,
     address + size);
}
