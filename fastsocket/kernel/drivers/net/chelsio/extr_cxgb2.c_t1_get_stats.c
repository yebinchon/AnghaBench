
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device_stats {scalar_t__ tx_window_errors; scalar_t__ tx_heartbeat_errors; scalar_t__ tx_fifo_errors; scalar_t__ tx_carrier_errors; scalar_t__ tx_aborted_errors; scalar_t__ rx_missed_errors; scalar_t__ rx_fifo_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_over_errors; scalar_t__ rx_length_errors; int collisions; scalar_t__ multicast; scalar_t__ rx_errors; scalar_t__ tx_errors; int rx_bytes; int tx_bytes; scalar_t__ rx_packets; scalar_t__ tx_packets; } ;
struct port_info {TYPE_2__* mac; struct net_device_stats netstats; } ;
struct net_device {size_t if_port; struct adapter* ml_priv; } ;
struct cmac_statistics {scalar_t__ TxLateCollisions; scalar_t__ TxUnderrun; scalar_t__ TxFramesAbortedDueToXSCollisions; scalar_t__ RxAlignErrors; scalar_t__ RxFCSErrors; scalar_t__ RxJabberErrors; scalar_t__ RxFrameTooLongErrors; int TxTotalCollisions; scalar_t__ RxMulticastFramesOK; scalar_t__ RxRuntErrors; scalar_t__ RxSymbolErrors; scalar_t__ RxSequenceErrors; scalar_t__ RxDataErrors; scalar_t__ TxLengthErrors; int RxOctetsOK; int TxOctetsOK; scalar_t__ RxBroadcastFramesOK; scalar_t__ RxUnicastFramesOK; scalar_t__ TxBroadcastFramesOK; scalar_t__ TxMulticastFramesOK; scalar_t__ TxUnicastFramesOK; } ;
struct adapter {struct port_info* port; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {struct cmac_statistics* (* statistics_update ) (TYPE_2__*,int ) ;} ;


 int MAC_STATS_UPDATE_FULL ;
 struct cmac_statistics* stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static struct net_device_stats *t1_get_stats(struct net_device *dev)
{
 struct adapter *adapter = dev->ml_priv;
 struct port_info *p = &adapter->port[dev->if_port];
 struct net_device_stats *ns = &p->netstats;
 const struct cmac_statistics *pstats;


 pstats = p->mac->ops->statistics_update(p->mac,
      MAC_STATS_UPDATE_FULL);

 ns->tx_packets = pstats->TxUnicastFramesOK +
  pstats->TxMulticastFramesOK + pstats->TxBroadcastFramesOK;

 ns->rx_packets = pstats->RxUnicastFramesOK +
  pstats->RxMulticastFramesOK + pstats->RxBroadcastFramesOK;

 ns->tx_bytes = pstats->TxOctetsOK;
 ns->rx_bytes = pstats->RxOctetsOK;

 ns->tx_errors = pstats->TxLateCollisions + pstats->TxLengthErrors +
  pstats->TxUnderrun + pstats->TxFramesAbortedDueToXSCollisions;
 ns->rx_errors = pstats->RxDataErrors + pstats->RxJabberErrors +
  pstats->RxFCSErrors + pstats->RxAlignErrors +
  pstats->RxSequenceErrors + pstats->RxFrameTooLongErrors +
  pstats->RxSymbolErrors + pstats->RxRuntErrors;

 ns->multicast = pstats->RxMulticastFramesOK;
 ns->collisions = pstats->TxTotalCollisions;


 ns->rx_length_errors = pstats->RxFrameTooLongErrors +
  pstats->RxJabberErrors;
 ns->rx_over_errors = 0;
 ns->rx_crc_errors = pstats->RxFCSErrors;
 ns->rx_frame_errors = pstats->RxAlignErrors;
 ns->rx_fifo_errors = 0;
 ns->rx_missed_errors = 0;


 ns->tx_aborted_errors = pstats->TxFramesAbortedDueToXSCollisions;
 ns->tx_carrier_errors = 0;
 ns->tx_fifo_errors = pstats->TxUnderrun;
 ns->tx_heartbeat_errors = 0;
 ns->tx_window_errors = pstats->TxLateCollisions;
 return ns;
}
