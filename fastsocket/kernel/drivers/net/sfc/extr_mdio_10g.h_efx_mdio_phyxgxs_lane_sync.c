
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;


 int MDIO_MMD_PHYXS ;
 int MDIO_PHYXS_LNSTAT ;
 int MDIO_PHYXS_LNSTAT_ALIGN ;
 int efx_mdio_read (struct efx_nic*,int ,int ) ;
 int hw ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int) ;

__attribute__((used)) static inline bool efx_mdio_phyxgxs_lane_sync(struct efx_nic *efx)
{
 int i, lane_status;
 bool sync;

 for (i = 0; i < 2; ++i)
  lane_status = efx_mdio_read(efx, MDIO_MMD_PHYXS,
         MDIO_PHYXS_LNSTAT);

 sync = !!(lane_status & MDIO_PHYXS_LNSTAT_ALIGN);
 if (!sync)
  netif_dbg(efx, hw, efx->net_dev, "XGXS lane status: %x\n",
     lane_status);
 return sync;
}
