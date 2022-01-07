
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 unsigned long long NEXT_OFFSET ;
 int cvmx_write64_uint64 (unsigned long long,unsigned long long) ;

__attribute__((used)) static void cvmx_bootmem_phy_set_next(uint64_t addr, uint64_t next)
{
 cvmx_write64_uint64((addr + NEXT_OFFSET) | (1ull << 63), next);
}
