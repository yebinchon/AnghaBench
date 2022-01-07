
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {scalar_t__ phy_type; int net_dev; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* init_phy ) (struct efx_nic*) ;} ;


 int MDIO_MMD_PHYXS ;
 scalar_t__ PHY_TYPE_QT2025C ;
 int QT2022C2_MAX_RESET_TIME ;
 int QT2022C2_RESET_WAIT ;
 int efx_mdio_reset_mmd (struct efx_nic*,int ,int,int) ;
 TYPE_2__* falcon_board (struct efx_nic*) ;
 int hw ;
 int msleep (int) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int qt2025c_wait_reset (struct efx_nic*) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static int qt202x_reset_phy(struct efx_nic *efx)
{
 int rc;

 if (efx->phy_type == PHY_TYPE_QT2025C) {


  rc = qt2025c_wait_reset(efx);
  if (rc < 0)
   goto fail;
 } else {


  rc = efx_mdio_reset_mmd(efx, MDIO_MMD_PHYXS,
     QT2022C2_MAX_RESET_TIME /
     QT2022C2_RESET_WAIT,
     QT2022C2_RESET_WAIT);
  if (rc < 0)
   goto fail;
 }


 msleep(250);

 falcon_board(efx)->type->init_phy(efx);

 return 0;

 fail:
 netif_err(efx, hw, efx->net_dev, "PHY reset timed out\n");
 return rc;
}
