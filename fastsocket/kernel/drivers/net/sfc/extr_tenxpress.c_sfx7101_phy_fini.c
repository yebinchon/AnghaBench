
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int LNPGA_PDOWN_WAIT ;
 int MDIO_MMD_PMAPMD ;
 int PMA_PMD_LNPGA_POWERDOWN_LBN ;
 int PMA_PMD_XCONTROL_REG ;
 int efx_mdio_write (struct efx_nic*,int ,int ,int) ;
 int schedule_timeout_uninterruptible (int ) ;

__attribute__((used)) static void sfx7101_phy_fini(struct efx_nic *efx)
{
 int reg;


 reg = (1 << PMA_PMD_LNPGA_POWERDOWN_LBN);
 efx_mdio_write(efx, MDIO_MMD_PMAPMD, PMA_PMD_XCONTROL_REG, reg);




 schedule_timeout_uninterruptible(LNPGA_PDOWN_WAIT);
}
