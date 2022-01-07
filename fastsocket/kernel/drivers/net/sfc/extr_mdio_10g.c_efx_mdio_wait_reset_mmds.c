
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;


 int EIO ;
 int ETIMEDOUT ;
 int MDIO45_RESET_ITERS ;
 int MDIO45_RESET_TIME ;
 int MDIO_CTRL1 ;
 int MDIO_CTRL1_RESET ;
 int efx_mdio_read (struct efx_nic*,int,int ) ;
 int hw ;
 int msleep (int const) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int) ;

int efx_mdio_wait_reset_mmds(struct efx_nic *efx, unsigned int mmd_mask)
{
 const int spintime = MDIO45_RESET_TIME / MDIO45_RESET_ITERS;
 int tries = MDIO45_RESET_ITERS;
 int rc = 0;
 int in_reset;

 while (tries) {
  int mask = mmd_mask;
  int mmd = 0;
  int stat;
  in_reset = 0;
  while (mask) {
   if (mask & 1) {
    stat = efx_mdio_read(efx, mmd, MDIO_CTRL1);
    if (stat < 0) {
     netif_err(efx, hw, efx->net_dev,
        "failed to read status of"
        " MMD %d\n", mmd);
     return -EIO;
    }
    if (stat & MDIO_CTRL1_RESET)
     in_reset |= (1 << mmd);
   }
   mask = mask >> 1;
   mmd++;
  }
  if (!in_reset)
   break;
  tries--;
  msleep(spintime);
 }
 if (in_reset != 0) {
  netif_err(efx, hw, efx->net_dev,
     "not all MMDs came out of reset in time."
     " MMDs still in reset: %x\n", in_reset);
  rc = -ETIMEDOUT;
 }
 return rc;
}
