
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ resource_size_t ;


 int io_free_memtype (scalar_t__,scalar_t__) ;

void
iomap_free(resource_size_t base, unsigned long size)
{
 io_free_memtype(base, base + size);
}
