
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_CACHE_LINE_MASK ;
 scalar_t__ CVMX_CACHE_LINE_SIZE ;
 int CVMX_DCACHE_INVALIDATE ;
 scalar_t__ cvmx_phys_to_ptr (int) ;

__attribute__((used)) static void fault_in(uint64_t addr, int len)
{
 volatile char *ptr;
 volatile char dummy;




 len += addr & CVMX_CACHE_LINE_MASK;
 addr &= ~CVMX_CACHE_LINE_MASK;
 ptr = (volatile char *)cvmx_phys_to_ptr(addr);




 CVMX_DCACHE_INVALIDATE;
 while (len > 0) {
  dummy += *ptr;
  len -= CVMX_CACHE_LINE_SIZE;
  ptr += CVMX_CACHE_LINE_SIZE;
 }
}
