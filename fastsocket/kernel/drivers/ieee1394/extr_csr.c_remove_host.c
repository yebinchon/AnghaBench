
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cyc_clk_acc; int max_rec; int lnk_spd; int guid_hi; int guid_lo; TYPE_2__* rom; } ;
struct hpsb_host {int update_config_rom; TYPE_1__ csr; } ;
typedef int quadlet_t ;
struct TYPE_4__ {int root_kv; } ;


 int CSR_BMC_SHIFT ;
 int CSR_BUS_INFO_SIZE ;
 int CSR_CMC_SHIFT ;
 int CSR_CYC_CLK_ACC_SHIFT ;
 int CSR_GENERATION_SHIFT ;
 int CSR_IRMC_SHIFT ;
 int CSR_ISC_SHIFT ;
 int CSR_MAX_REC_SHIFT ;
 int CSR_MAX_ROM_SHIFT ;
 int CSR_PMC_SHIFT ;
 int IEEE1394_BUSID_MAGIC ;
 int cpu_to_be32 (int) ;
 int csr1212_detach_keyval_from_directory (int ,int ) ;
 int csr1212_init_local_csr (TYPE_2__*,int *,int ) ;
 int node_cap ;

__attribute__((used)) static void remove_host(struct hpsb_host *host)
{
 quadlet_t bus_info[CSR_BUS_INFO_SIZE];

 bus_info[1] = IEEE1394_BUSID_MAGIC;
 bus_info[2] = cpu_to_be32((0 << CSR_IRMC_SHIFT) |
      (0 << CSR_CMC_SHIFT) |
      (0 << CSR_ISC_SHIFT) |
      (0 << CSR_BMC_SHIFT) |
      (0 << CSR_PMC_SHIFT) |
      (host->csr.cyc_clk_acc << CSR_CYC_CLK_ACC_SHIFT) |
      (host->csr.max_rec << CSR_MAX_REC_SHIFT) |
      (0 << CSR_MAX_ROM_SHIFT) |
      (0 << CSR_GENERATION_SHIFT) |
      host->csr.lnk_spd);

 bus_info[3] = cpu_to_be32(host->csr.guid_hi);
 bus_info[4] = cpu_to_be32(host->csr.guid_lo);

 csr1212_detach_keyval_from_directory(host->csr.rom->root_kv, node_cap);

 csr1212_init_local_csr(host->csr.rom, bus_info, 0);
 host->update_config_rom = 1;
}
