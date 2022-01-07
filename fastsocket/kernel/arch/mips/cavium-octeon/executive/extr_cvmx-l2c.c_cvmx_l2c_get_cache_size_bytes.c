
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CACHE_LINE_SIZE ;
 int cvmx_l2c_get_num_assoc () ;
 int cvmx_l2c_get_num_sets () ;

int cvmx_l2c_get_cache_size_bytes(void)
{
 return cvmx_l2c_get_num_sets() * cvmx_l2c_get_num_assoc() *
  CVMX_CACHE_LINE_SIZE;
}
