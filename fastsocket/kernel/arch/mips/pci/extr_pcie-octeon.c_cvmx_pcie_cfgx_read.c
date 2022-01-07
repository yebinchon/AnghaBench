
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int addr; } ;
union cvmx_pescx_cfg_rd {TYPE_1__ s; scalar_t__ u64; } ;
typedef int uint32_t ;


 int CVMX_PESCX_CFG_RD (int) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static uint32_t cvmx_pcie_cfgx_read(int pcie_port, uint32_t cfg_offset)
{
 union cvmx_pescx_cfg_rd pescx_cfg_rd;
 pescx_cfg_rd.u64 = 0;
 pescx_cfg_rd.s.addr = cfg_offset;
 cvmx_write_csr(CVMX_PESCX_CFG_RD(pcie_port), pescx_cfg_rd.u64);
 pescx_cfg_rd.u64 = cvmx_read_csr(CVMX_PESCX_CFG_RD(pcie_port));
 return pescx_cfg_rd.s.data;
}
