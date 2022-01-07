
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {scalar_t__ dma_addr; int addr; } ;
struct TYPE_4__ {int mode_support; int mdio_write; int mdio_read; } ;
struct efx_nic {TYPE_2__ stats_buffer; int net_dev; TYPE_3__* phy_op; TYPE_1__ mdio; } ;
struct TYPE_6__ {int (* probe ) (struct efx_nic*) ;} ;


 int MC_CMD_MAC_NSTATS ;
 int MDIO_EMULATE_C22 ;
 int MDIO_SUPPORTS_C45 ;
 int efx_mcdi_mac_stats (struct efx_nic*,scalar_t__,int ,int ,int) ;
 TYPE_3__ efx_mcdi_phy_ops ;
 int efx_nic_alloc_buffer (struct efx_nic*,TYPE_2__*,int) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ,int ,int ) ;
 int probe ;
 int siena_mdio_read ;
 int siena_mdio_write ;
 int stub1 (struct efx_nic*) ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static int siena_probe_port(struct efx_nic *efx)
{
 int rc;


 efx->phy_op = &efx_mcdi_phy_ops;


 efx->mdio.mode_support = MDIO_SUPPORTS_C45 | MDIO_EMULATE_C22;
 efx->mdio.mdio_read = siena_mdio_read;
 efx->mdio.mdio_write = siena_mdio_write;


 rc = efx->phy_op->probe(efx);
 if (rc != 0)
  return rc;


 rc = efx_nic_alloc_buffer(efx, &efx->stats_buffer,
      MC_CMD_MAC_NSTATS * sizeof(u64));
 if (rc)
  return rc;
 netif_dbg(efx, probe, efx->net_dev,
    "stats buffer at %llx (virt %p phys %llx)\n",
    (u64)efx->stats_buffer.dma_addr,
    efx->stats_buffer.addr,
    (u64)virt_to_phys(efx->stats_buffer.addr));

 efx_mcdi_mac_stats(efx, efx->stats_buffer.dma_addr, 0, 0, 1);

 return 0;
}
