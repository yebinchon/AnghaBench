
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct efx_nic {int net_dev; } ;


 int EIO ;
 int ENODEV ;
 int MDIO_DEVS1 ;
 int MDIO_DEVS2 ;
 unsigned int MDIO_DEVS_PHYXS ;
 int MDIO_MMD_PHYXS ;
 int __ffs (unsigned int) ;
 scalar_t__ efx_mdio_check_mmd (struct efx_nic*,int) ;
 int efx_mdio_read (struct efx_nic*,int,int ) ;
 int hw ;
 int netif_err (struct efx_nic*,int ,int ,char*,...) ;
 int netif_vdbg (struct efx_nic*,int ,int ,char*,unsigned int) ;

int efx_mdio_check_mmds(struct efx_nic *efx, unsigned int mmd_mask)
{
 int mmd = 0, probe_mmd, devs1, devs2;
 u32 devices;




 probe_mmd = (mmd_mask & MDIO_DEVS_PHYXS) ? MDIO_MMD_PHYXS :
     __ffs(mmd_mask);


 devs1 = efx_mdio_read(efx, probe_mmd, MDIO_DEVS1);
 devs2 = efx_mdio_read(efx, probe_mmd, MDIO_DEVS2);
 if (devs1 < 0 || devs2 < 0) {
  netif_err(efx, hw, efx->net_dev,
     "failed to read devices present\n");
  return -EIO;
 }
 devices = devs1 | (devs2 << 16);
 if ((devices & mmd_mask) != mmd_mask) {
  netif_err(efx, hw, efx->net_dev,
     "required MMDs not present: got %x, wanted %x\n",
     devices, mmd_mask);
  return -ENODEV;
 }
 netif_vdbg(efx, hw, efx->net_dev, "Devices present: %x\n", devices);


 while (mmd_mask) {
  if ((mmd_mask & 1) && efx_mdio_check_mmd(efx, mmd))
   return -EIO;
  mmd_mask = mmd_mask >> 1;
  mmd++;
 }

 return 0;
}
