
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int CVMX_L2C_PFC0 ;
 int CVMX_L2C_PFC1 ;
 int CVMX_L2C_PFC2 ;
 int CVMX_L2C_PFC3 ;
 int cvmx_read_csr (int ) ;

uint64_t cvmx_l2c_read_perf(uint32_t counter)
{
 switch (counter) {
 case 0:
  return cvmx_read_csr(CVMX_L2C_PFC0);
 case 1:
  return cvmx_read_csr(CVMX_L2C_PFC1);
 case 2:
  return cvmx_read_csr(CVMX_L2C_PFC2);
 case 3:
 default:
  return cvmx_read_csr(CVMX_L2C_PFC3);
 }
}
