
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int link_autoneg; int port_config; int port_type; } ;
struct TYPE_3__ {int dev; } ;


 int AUTONEG_ENABLE ;
 int QLCNIC_GBE ;
 int QLCNIC_XGBE ;
 scalar_t__ QLC_83XX_AUTONEG (int ) ;
 scalar_t__ QLC_83XX_SFP_10G_CAPABLE (int ) ;
 int dev_err (int *,char*) ;
 int qlcnic_83xx_get_port_config (struct qlcnic_adapter*) ;

int qlcnic_83xx_get_port_info(struct qlcnic_adapter *adapter)
{
 int status;

 status = qlcnic_83xx_get_port_config(adapter);
 if (status) {
  dev_err(&adapter->pdev->dev,
   "Get Port Info failed\n");
 } else {
  if (QLC_83XX_SFP_10G_CAPABLE(adapter->ahw->port_config))
   adapter->ahw->port_type = QLCNIC_XGBE;
  else
   adapter->ahw->port_type = QLCNIC_GBE;

  if (QLC_83XX_AUTONEG(adapter->ahw->port_config))
   adapter->ahw->link_autoneg = AUTONEG_ENABLE;
 }
 return status;
}
