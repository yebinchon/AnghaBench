
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_CACHE_LINE_MASK ;
 scalar_t__ CVMX_CACHE_LINE_SIZE ;
 scalar_t__ cvmx_l2c_lock_line (int) ;

int cvmx_l2c_lock_mem_region(uint64_t start, uint64_t len)
{
 int retval = 0;


 len += start & CVMX_CACHE_LINE_MASK;
 start &= ~CVMX_CACHE_LINE_MASK;
 len = (len + CVMX_CACHE_LINE_MASK) & ~CVMX_CACHE_LINE_MASK;

 while (len) {
  retval += cvmx_l2c_lock_line(start);
  start += CVMX_CACHE_LINE_SIZE;
  len -= CVMX_CACHE_LINE_SIZE;
 }

 return retval;
}
