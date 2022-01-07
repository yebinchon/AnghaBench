
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CVMX_L2C_SPAR4 ;
 int OCTEON_CN38XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_l2c_get_hw_way_partition () ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int) ;
 scalar_t__ l2_size_half () ;

int cvmx_l2c_set_hw_way_partition(uint32_t mask)
{
 uint32_t valid_mask;

 valid_mask = 0xff;

 if (OCTEON_IS_MODEL(OCTEON_CN58XX) || OCTEON_IS_MODEL(OCTEON_CN38XX)) {
  if (l2_size_half())
   valid_mask = 0xf;
 } else if (l2_size_half())
  valid_mask = 0x3;

 mask &= valid_mask;


 if (mask == valid_mask)
  return -1;

 if (((mask | cvmx_l2c_get_hw_way_partition()) & valid_mask) ==
     valid_mask)
  return -1;

 cvmx_write_csr(CVMX_L2C_SPAR4,
         (cvmx_read_csr(CVMX_L2C_SPAR4) & ~0xFF) | mask);
 return 0;
}
