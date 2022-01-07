
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {int phy_mode; int wanted_fc; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* init_phy ) (struct efx_nic*) ;} ;


 int HZ ;
 int PHY_MODE_SPECIAL ;
 int TENXPRESS_REQUIRED_DEVS ;
 int efx_link_set_wanted_fc (struct efx_nic*,int ) ;
 int efx_mdio_an_reconfigure (struct efx_nic*) ;
 int efx_mdio_check_mmds (struct efx_nic*,int ) ;
 int efx_mdio_wait_reset_mmds (struct efx_nic*,int ) ;
 TYPE_2__* falcon_board (struct efx_nic*) ;
 int falcon_reset_xaui (struct efx_nic*) ;
 int schedule_timeout_uninterruptible (int) ;
 int stub1 (struct efx_nic*) ;
 int tenxpress_init (struct efx_nic*) ;

__attribute__((used)) static int tenxpress_phy_init(struct efx_nic *efx)
{
 int rc;

 falcon_board(efx)->type->init_phy(efx);

 if (!(efx->phy_mode & PHY_MODE_SPECIAL)) {
  rc = efx_mdio_wait_reset_mmds(efx, TENXPRESS_REQUIRED_DEVS);
  if (rc < 0)
   return rc;

  rc = efx_mdio_check_mmds(efx, TENXPRESS_REQUIRED_DEVS);
  if (rc < 0)
   return rc;
 }

 rc = tenxpress_init(efx);
 if (rc < 0)
  return rc;


 efx_link_set_wanted_fc(efx, efx->wanted_fc);
 efx_mdio_an_reconfigure(efx);

 schedule_timeout_uninterruptible(HZ / 5);


 falcon_reset_xaui(efx);

 return 0;
}
