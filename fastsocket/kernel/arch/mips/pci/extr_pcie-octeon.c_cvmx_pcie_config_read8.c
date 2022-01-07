
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ __cvmx_pcie_build_config_addr (int,int,int,int,int) ;
 int cvmx_read64_uint8 (scalar_t__) ;

__attribute__((used)) static uint8_t cvmx_pcie_config_read8(int pcie_port, int bus, int dev,
          int fn, int reg)
{
 uint64_t address =
     __cvmx_pcie_build_config_addr(pcie_port, bus, dev, fn, reg);
 if (address)
  return cvmx_read64_uint8(address);
 else
  return 0xff;
}
