
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union e1000_adv_tx_desc {int dummy; } e1000_adv_tx_desc ;
typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_5__ {scalar_t__ func; } ;
struct TYPE_6__ {int (* init_thermal_sensor_thresh ) (struct e1000_hw*) ;scalar_t__ (* init_hw ) (struct e1000_hw*) ;int (* reset_hw ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int type; TYPE_3__ ops; int autoneg; } ;
struct e1000_fc_info {int high_water; int low_water; int pause_time; int send_xon; int requested_mode; int current_mode; } ;
struct e1000_hw {TYPE_2__ bus; struct e1000_mac_info mac; struct e1000_fc_info fc; } ;
struct igb_adapter {int max_frame_size; int vfs_allocated_count; int netdev; scalar_t__ ets; int state; TYPE_1__* vf_data; struct e1000_hw hw; struct pci_dev* pdev; } ;
struct TYPE_4__ {int flags; } ;


 int ALIGN (int,int) ;
 int E1000_PBA ;
 int E1000_PBA_34K ;
 int E1000_RXPBS ;
 int E1000_RXPBS_SIZE_MASK_82576 ;
 int E1000_VET ;
 int E1000_VFRE ;
 int E1000_VFTE ;
 int E1000_WUC ;
 int ETHERNET_IEEE_VLAN_TYPE ;
 int ETH_FCS_LEN ;
 int ETH_FRAME_LEN ;
 int IGB_VF_FLAG_PF_SET_MAC ;
 int __IGB_DOWN ;
 int dev_err (int *,char*) ;







 int igb_force_mac_fc (struct e1000_hw*) ;
 int igb_get_phy_info (struct e1000_hw*) ;
 int igb_init_dmac (struct igb_adapter*,int) ;
 int igb_ping_all_vfs (struct igb_adapter*) ;
 int igb_power_down_link (struct igb_adapter*) ;
 int igb_ptp_reset (struct igb_adapter*) ;
 int igb_rxpbs_adjust_82580 (int) ;
 int igb_update_mng_vlan (struct igb_adapter*) ;
 int min (int,int) ;
 int netif_running (int ) ;
 int rd32 (int ) ;
 int stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 int test_bit (int ,int *) ;
 int wr32 (int ,int) ;

void igb_reset(struct igb_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_mac_info *mac = &hw->mac;
 struct e1000_fc_info *fc = &hw->fc;
 u32 pba = 0, tx_space, min_tx_space, min_rx_space, hwm;




 switch (mac->type) {
 case 129:
 case 128:
 case 132:
  pba = rd32(E1000_RXPBS);
  pba = igb_rxpbs_adjust_82580(pba);
  break;
 case 133:
  pba = rd32(E1000_RXPBS);
  pba &= E1000_RXPBS_SIZE_MASK_82576;
  break;
 case 134:
 case 131:
 case 130:
 default:
  pba = E1000_PBA_34K;
  break;
 }

 if ((adapter->max_frame_size > ETH_FRAME_LEN + ETH_FCS_LEN) &&
     (mac->type < 133)) {

  wr32(E1000_PBA, pba);
  pba = rd32(E1000_PBA);

  tx_space = pba >> 16;

  pba &= 0xffff;



  min_tx_space = (adapter->max_frame_size +
    sizeof(union e1000_adv_tx_desc) -
    ETH_FCS_LEN) * 2;
  min_tx_space = ALIGN(min_tx_space, 1024);
  min_tx_space >>= 10;

  min_rx_space = adapter->max_frame_size;
  min_rx_space = ALIGN(min_rx_space, 1024);
  min_rx_space >>= 10;





  if (tx_space < min_tx_space &&
      ((min_tx_space - tx_space) < pba)) {
   pba = pba - (min_tx_space - tx_space);




   if (pba < min_rx_space)
    pba = min_rx_space;
  }
  wr32(E1000_PBA, pba);
 }
 hwm = min(((pba << 10) * 9 / 10),
   ((pba << 10) - 2 * adapter->max_frame_size));

 fc->high_water = hwm & 0xFFFFFFF0;
 fc->low_water = fc->high_water - 16;
 fc->pause_time = 0xFFFF;
 fc->send_xon = 1;
 fc->current_mode = fc->requested_mode;


 if (adapter->vfs_allocated_count) {
  int i;
  for (i = 0 ; i < adapter->vfs_allocated_count; i++)
   adapter->vf_data[i].flags &= IGB_VF_FLAG_PF_SET_MAC;


  igb_ping_all_vfs(adapter);


  wr32(E1000_VFRE, 0);
  wr32(E1000_VFTE, 0);
 }


 hw->mac.ops.reset_hw(hw);
 wr32(E1000_WUC, 0);

 if (hw->mac.ops.init_hw(hw))
  dev_err(&pdev->dev, "Hardware Error\n");




 if (!hw->mac.autoneg)
  igb_force_mac_fc(hw);

 igb_init_dmac(adapter, pba);
 if (!netif_running(adapter->netdev))
  igb_power_down_link(adapter);

 igb_update_mng_vlan(adapter);


 wr32(E1000_VET, ETHERNET_IEEE_VLAN_TYPE);


 igb_ptp_reset(adapter);

 igb_get_phy_info(hw);
}
