
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int eee_disable; } ;
struct TYPE_8__ {TYPE_3__ _82575; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_5__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_4__ dev_spec; TYPE_2__ mac; TYPE_1__ phy; } ;
struct igb_adapter {scalar_t__ link_duplex; struct e1000_hw hw; } ;
struct ethtool_eee {int supported; int eee_active; int eee_enabled; int tx_lpi_enabled; int advertised; void* lp_advertised; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int E1000_EEER ;
 int E1000_EEER_EEE_NEG ;
 int E1000_EEER_TX_LPI_EN ;
 int E1000_EEE_LP_ADV_ADDR_I210 ;
 int E1000_EEE_LP_ADV_ADDR_I350 ;
 int E1000_EEE_LP_ADV_DEV_I210 ;
 int E1000_IPCNFG ;
 int E1000_IPCNFG_EEE_100M_AN ;
 int E1000_IPCNFG_EEE_1G_AN ;
 int ENODATA ;
 int EOPNOTSUPP ;
 scalar_t__ HALF_DUPLEX ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;



 scalar_t__ e1000_media_type_copper ;
 int igb_read_emi_reg (struct e1000_hw*,int ,int *) ;
 int igb_read_xmdio_reg (struct e1000_hw*,int ,int ,int *) ;
 void* mmd_eee_adv_to_ethtool_adv_t (int ) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int rd32 (int ) ;

__attribute__((used)) static int igb_get_eee(struct net_device *netdev, struct ethtool_eee *edata)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 ipcnfg, eeer, ret_val;
 u16 phy_data;

 if ((hw->mac.type < 128) ||
     (hw->phy.media_type != e1000_media_type_copper))
  return -EOPNOTSUPP;

 edata->supported = (SUPPORTED_1000baseT_Full |
       SUPPORTED_100baseT_Full);

 ipcnfg = rd32(E1000_IPCNFG);
 eeer = rd32(E1000_EEER);


 if (ipcnfg & E1000_IPCNFG_EEE_1G_AN)
  edata->advertised = ADVERTISED_1000baseT_Full;

 if (ipcnfg & E1000_IPCNFG_EEE_100M_AN)
  edata->advertised |= ADVERTISED_100baseT_Full;


 switch (hw->mac.type) {
 case 128:
  ret_val = igb_read_emi_reg(hw, E1000_EEE_LP_ADV_ADDR_I350,
        &phy_data);
  if (ret_val)
   return -ENODATA;

  edata->lp_advertised = mmd_eee_adv_to_ethtool_adv_t(phy_data);

  break;
 case 130:
 case 129:
  ret_val = igb_read_xmdio_reg(hw, E1000_EEE_LP_ADV_ADDR_I210,
          E1000_EEE_LP_ADV_DEV_I210,
          &phy_data);
  if (ret_val)
   return -ENODATA;

  edata->lp_advertised = mmd_eee_adv_to_ethtool_adv_t(phy_data);

  break;
 default:
  break;
 }

 if (eeer & E1000_EEER_EEE_NEG)
  edata->eee_active = 1;

 edata->eee_enabled = !hw->dev_spec._82575.eee_disable;

 if (eeer & E1000_EEER_TX_LPI_EN)
  edata->tx_lpi_enabled = 1;




 if (adapter->link_duplex == HALF_DUPLEX) {
  edata->eee_enabled = 0;
  edata->eee_active = 0;
  edata->tx_lpi_enabled = 0;
  edata->advertised &= ~edata->advertised;
 }

 return 0;
}
