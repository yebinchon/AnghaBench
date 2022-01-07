
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {int ptp_clock; TYPE_2__ hw; } ;
struct ethtool_ts_info {int so_timestamping; int phc_index; int tx_types; int rx_filters; } ;


 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ ;
 int HWTSTAMP_FILTER_PTP_V1_L4_SYNC ;
 int HWTSTAMP_FILTER_PTP_V2_DELAY_REQ ;
 int HWTSTAMP_FILTER_PTP_V2_EVENT ;
 int HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ ;
 int HWTSTAMP_FILTER_PTP_V2_L2_EVENT ;
 int HWTSTAMP_FILTER_PTP_V2_L2_SYNC ;
 int HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ ;
 int HWTSTAMP_FILTER_PTP_V2_L4_EVENT ;
 int HWTSTAMP_FILTER_PTP_V2_L4_SYNC ;
 int HWTSTAMP_FILTER_PTP_V2_SYNC ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 int SOF_TIMESTAMPING_RAW_HARDWARE ;
 int SOF_TIMESTAMPING_RX_HARDWARE ;
 int SOF_TIMESTAMPING_RX_SOFTWARE ;
 int SOF_TIMESTAMPING_SOFTWARE ;
 int SOF_TIMESTAMPING_TX_HARDWARE ;
 int SOF_TIMESTAMPING_TX_SOFTWARE ;
 int ethtool_op_get_ts_info (struct net_device*,struct ethtool_ts_info*) ;


 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int ptp_clock_index (int ) ;

__attribute__((used)) static int ixgbe_get_ts_info(struct net_device *dev,
        struct ethtool_ts_info *info)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);

 switch (adapter->hw.mac.type) {
 default:
  return ethtool_op_get_ts_info(dev, info);
  break;
 }
 return 0;
}
