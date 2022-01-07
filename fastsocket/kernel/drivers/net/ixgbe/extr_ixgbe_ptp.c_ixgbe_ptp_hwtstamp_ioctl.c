
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
typedef int config ;


 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 int ETH_P_1588 ;
 int IXGBE_ETQF (int ) ;
 int IXGBE_ETQF_1588 ;
 int IXGBE_ETQF_FILTER_1588 ;
 int IXGBE_ETQF_FILTER_EN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXMTRL ;
 int IXGBE_RXMTRL_V1_DELAY_REQ_MSG ;
 int IXGBE_RXMTRL_V1_SYNC_MSG ;
 int IXGBE_RXSTMPH ;
 int IXGBE_TSYNCRXCTL ;
 int IXGBE_TSYNCRXCTL_ENABLED ;
 int IXGBE_TSYNCRXCTL_TYPE_EVENT_V2 ;
 int IXGBE_TSYNCRXCTL_TYPE_L4_V1 ;
 int IXGBE_TSYNCRXCTL_TYPE_MASK ;
 int IXGBE_TSYNCTXCTL ;
 int IXGBE_TSYNCTXCTL_ENABLED ;
 int IXGBE_TXSTMPH ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int PTP_EV_PORT ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 scalar_t__ ixgbe_mac_82598EB ;

int ixgbe_ptp_hwtstamp_ioctl(struct ixgbe_adapter *adapter,
        struct ifreq *ifr, int cmd)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct hwtstamp_config config;
 u32 tsync_tx_ctl = IXGBE_TSYNCTXCTL_ENABLED;
 u32 tsync_rx_ctl = IXGBE_TSYNCRXCTL_ENABLED;
 u32 tsync_rx_mtrl = PTP_EV_PORT << 16;
 bool is_l2 = 0;
 u32 regval;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;


 if (config.flags)
  return -EINVAL;

 switch (config.tx_type) {
 case 129:
  tsync_tx_ctl = 0;
 case 128:
  break;
 default:
  return -ERANGE;
 }

 switch (config.rx_filter) {
 case 142:
  tsync_rx_ctl = 0;
  tsync_rx_mtrl = 0;
  break;
 case 139:
  tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_L4_V1;
  tsync_rx_mtrl |= IXGBE_RXMTRL_V1_SYNC_MSG;
  break;
 case 141:
  tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_L4_V1;
  tsync_rx_mtrl |= IXGBE_RXMTRL_V1_DELAY_REQ_MSG;
  break;
 case 137:
 case 135:
 case 132:
 case 130:
 case 134:
 case 131:
 case 138:
 case 136:
 case 133:
  tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_EVENT_V2;
  is_l2 = 1;
  config.rx_filter = 137;
  break;
 case 140:
 case 143:
 default:






  config.rx_filter = 142;
  return -ERANGE;
 }

 if (hw->mac.type == ixgbe_mac_82598EB) {
  if (tsync_rx_ctl | tsync_tx_ctl)
   return -ERANGE;
  return 0;
 }


 if (is_l2)
  IXGBE_WRITE_REG(hw, IXGBE_ETQF(IXGBE_ETQF_FILTER_1588),
    (IXGBE_ETQF_FILTER_EN |
     IXGBE_ETQF_1588 |
     ETH_P_1588));
 else
  IXGBE_WRITE_REG(hw, IXGBE_ETQF(IXGBE_ETQF_FILTER_1588), 0);



 regval = IXGBE_READ_REG(hw, IXGBE_TSYNCTXCTL);
 regval &= ~IXGBE_TSYNCTXCTL_ENABLED;
 regval |= tsync_tx_ctl;
 IXGBE_WRITE_REG(hw, IXGBE_TSYNCTXCTL, regval);


 regval = IXGBE_READ_REG(hw, IXGBE_TSYNCRXCTL);
 regval &= ~(IXGBE_TSYNCRXCTL_ENABLED | IXGBE_TSYNCRXCTL_TYPE_MASK);
 regval |= tsync_rx_ctl;
 IXGBE_WRITE_REG(hw, IXGBE_TSYNCRXCTL, regval);


 IXGBE_WRITE_REG(hw, IXGBE_RXMTRL, tsync_rx_mtrl);

 IXGBE_WRITE_FLUSH(hw);


 regval = IXGBE_READ_REG(hw, IXGBE_TXSTMPH);
 regval = IXGBE_READ_REG(hw, IXGBE_RXSTMPH);

 return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
  -EFAULT : 0;
}
