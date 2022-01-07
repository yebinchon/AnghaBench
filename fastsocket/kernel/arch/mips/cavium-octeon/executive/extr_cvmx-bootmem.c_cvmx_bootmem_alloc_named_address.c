
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 void* cvmx_bootmem_alloc_named_range (scalar_t__,scalar_t__,scalar_t__,int ,char*) ;

void *cvmx_bootmem_alloc_named_address(uint64_t size, uint64_t address,
           char *name)
{
    return cvmx_bootmem_alloc_named_range(size, address, address + size,
       0, name);
}
