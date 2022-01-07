
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* data; void* addr; } ;
union cvmx_pescx_cfg_wr {scalar_t__ u64; TYPE_1__ s; } ;
typedef void* uint32_t ;


 int CVMX_PESCX_CFG_WR (int) ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static void cvmx_pcie_cfgx_write(int pcie_port, uint32_t cfg_offset,
     uint32_t val)
{
 union cvmx_pescx_cfg_wr pescx_cfg_wr;
 pescx_cfg_wr.u64 = 0;
 pescx_cfg_wr.s.addr = cfg_offset;
 pescx_cfg_wr.s.data = val;
 cvmx_write_csr(CVMX_PESCX_CFG_WR(pcie_port), pescx_cfg_wr.u64);
}
