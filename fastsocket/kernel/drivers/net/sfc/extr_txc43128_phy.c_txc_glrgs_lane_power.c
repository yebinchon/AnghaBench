
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int phy_mode; } ;


 int PHY_MODE_LOW_POWER ;
 int TXC_GLCMD_L01PD_LBN ;
 int TXC_GLCMD_L23PD_LBN ;
 int TXC_GLRGS_GLCMD ;
 int efx_mdio_read (struct efx_nic*,int,int ) ;
 int efx_mdio_write (struct efx_nic*,int,int ,int) ;

__attribute__((used)) static void txc_glrgs_lane_power(struct efx_nic *efx, int mmd)
{
 int pd = (1 << TXC_GLCMD_L01PD_LBN) | (1 << TXC_GLCMD_L23PD_LBN);
 int ctl = efx_mdio_read(efx, mmd, TXC_GLRGS_GLCMD);

 if (!(efx->phy_mode & PHY_MODE_LOW_POWER))
  ctl &= ~pd;
 else
  ctl |= pd;

 efx_mdio_write(efx, mmd, TXC_GLRGS_GLCMD, ctl);
}
