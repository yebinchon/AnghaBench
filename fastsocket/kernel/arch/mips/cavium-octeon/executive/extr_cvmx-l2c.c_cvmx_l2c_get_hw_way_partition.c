
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_L2C_SPAR4 ;
 int cvmx_read_csr (int ) ;

int cvmx_l2c_get_hw_way_partition(void)
{
 return cvmx_read_csr(CVMX_L2C_SPAR4) & (0xFF);
}
