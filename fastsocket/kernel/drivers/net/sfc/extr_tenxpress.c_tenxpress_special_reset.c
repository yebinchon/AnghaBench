
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 int PMA_PMD_EXT_SSR_LBN ;
 int PMA_PMD_XCONTROL_REG ;
 int TENXPRESS_REQUIRED_DEVS ;
 int efx_mdio_read (struct efx_nic*,int ,int ) ;
 int efx_mdio_wait_reset_mmds (struct efx_nic*,int ) ;
 int efx_mdio_write (struct efx_nic*,int ,int ,int) ;
 int falcon_start_nic_stats (struct efx_nic*) ;
 int falcon_stop_nic_stats (struct efx_nic*) ;
 int mdelay (int) ;
 int tenxpress_init (struct efx_nic*) ;

__attribute__((used)) static int tenxpress_special_reset(struct efx_nic *efx)
{
 int rc, reg;




 falcon_stop_nic_stats(efx);


 reg = efx_mdio_read(efx, MDIO_MMD_PMAPMD, PMA_PMD_XCONTROL_REG);
 reg |= (1 << PMA_PMD_EXT_SSR_LBN);
 efx_mdio_write(efx, MDIO_MMD_PMAPMD, PMA_PMD_XCONTROL_REG, reg);

 mdelay(200);


 rc = efx_mdio_wait_reset_mmds(efx, TENXPRESS_REQUIRED_DEVS);
 if (rc < 0)
  goto out;


 rc = tenxpress_init(efx);
 if (rc < 0)
  goto out;


 mdelay(10);
out:
 falcon_start_nic_stats(efx);
 return rc;
}
