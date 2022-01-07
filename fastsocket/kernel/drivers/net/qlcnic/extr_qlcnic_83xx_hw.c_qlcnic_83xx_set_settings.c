
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct ethtool_cmd {scalar_t__ autoneg; } ;
struct TYPE_4__ {int port_config; } ;
struct TYPE_3__ {int dev; } ;


 int BIT_10 ;
 int BIT_11 ;
 int BIT_15 ;
 int BIT_8 ;
 int BIT_9 ;
 int EINVAL ;




 int dev_info (int *,char*) ;
 int ethtool_cmd_speed (struct ethtool_cmd*) ;
 int qlcnic_83xx_set_port_config (struct qlcnic_adapter*) ;

int qlcnic_83xx_set_settings(struct qlcnic_adapter *adapter,
        struct ethtool_cmd *ecmd)
{
 int status = 0;
 u32 config = adapter->ahw->port_config;

 if (ecmd->autoneg)
  adapter->ahw->port_config |= BIT_15;

 switch (ethtool_cmd_speed(ecmd)) {
 case 131:
  adapter->ahw->port_config |= BIT_8;
  break;
 case 130:
  adapter->ahw->port_config |= BIT_9;
  break;
 case 129:
  adapter->ahw->port_config |= BIT_10;
  break;
 case 128:
  adapter->ahw->port_config |= BIT_11;
  break;
 default:
  return -EINVAL;
 }

 status = qlcnic_83xx_set_port_config(adapter);
 if (status) {
  dev_info(&adapter->pdev->dev,
    "Faild to Set Link Speed and autoneg.\n");
  adapter->ahw->port_config = config;
 }
 return status;
}
