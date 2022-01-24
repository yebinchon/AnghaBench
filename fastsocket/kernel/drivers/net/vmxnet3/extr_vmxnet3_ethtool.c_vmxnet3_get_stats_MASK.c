#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vmxnet3_tq_driver_stats {scalar_t__ drop_total; } ;
struct vmxnet3_rq_driver_stats {scalar_t__ drop_total; } ;
struct vmxnet3_adapter {int num_tx_queues; int num_rx_queues; TYPE_4__* rx_queue; TYPE_3__* rqd_start; TYPE_2__* tx_queue; TYPE_1__* tqd_start; int /*<<< orphan*/  cmd_lock; } ;
struct net_device_stats {int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct UPT1_TxStats {scalar_t__ pktsTxError; scalar_t__ bcastBytesTxOK; scalar_t__ mcastBytesTxOK; scalar_t__ ucastBytesTxOK; scalar_t__ bcastPktsTxOK; scalar_t__ mcastPktsTxOK; scalar_t__ ucastPktsTxOK; } ;
struct UPT1_RxStats {scalar_t__ mcastPktsRxOK; scalar_t__ pktsRxError; scalar_t__ bcastBytesRxOK; scalar_t__ mcastBytesRxOK; scalar_t__ ucastBytesRxOK; scalar_t__ bcastPktsRxOK; scalar_t__ ucastPktsRxOK; } ;
struct TYPE_8__ {struct vmxnet3_rq_driver_stats stats; } ;
struct TYPE_7__ {struct UPT1_RxStats stats; } ;
struct TYPE_6__ {struct vmxnet3_tq_driver_stats stats; } ;
struct TYPE_5__ {struct UPT1_TxStats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_CMD_GET_STATS ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device_stats*,int /*<<< orphan*/ ,int) ; 
 struct vmxnet3_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

struct net_device_stats *
FUNC5(struct net_device *netdev)
{
	struct vmxnet3_adapter *adapter;
	struct vmxnet3_tq_driver_stats *drvTxStats;
	struct vmxnet3_rq_driver_stats *drvRxStats;
	struct UPT1_TxStats *devTxStats;
	struct UPT1_RxStats *devRxStats;
	struct net_device_stats *net_stats = &netdev->stats;
	unsigned long flags;
	int i;

	adapter = FUNC2(netdev);

	/* Collect the dev stats into the shared area */
	FUNC3(&adapter->cmd_lock, flags);
	FUNC0(adapter, VMXNET3_REG_CMD, VMXNET3_CMD_GET_STATS);
	FUNC4(&adapter->cmd_lock, flags);

	FUNC1(net_stats, 0, sizeof(*net_stats));
	for (i = 0; i < adapter->num_tx_queues; i++) {
		devTxStats = &adapter->tqd_start[i].stats;
		drvTxStats = &adapter->tx_queue[i].stats;
		net_stats->tx_packets += devTxStats->ucastPktsTxOK +
					devTxStats->mcastPktsTxOK +
					devTxStats->bcastPktsTxOK;
		net_stats->tx_bytes += devTxStats->ucastBytesTxOK +
				      devTxStats->mcastBytesTxOK +
				      devTxStats->bcastBytesTxOK;
		net_stats->tx_errors += devTxStats->pktsTxError;
		net_stats->tx_dropped += drvTxStats->drop_total;
	}

	for (i = 0; i < adapter->num_rx_queues; i++) {
		devRxStats = &adapter->rqd_start[i].stats;
		drvRxStats = &adapter->rx_queue[i].stats;
		net_stats->rx_packets += devRxStats->ucastPktsRxOK +
					devRxStats->mcastPktsRxOK +
					devRxStats->bcastPktsRxOK;

		net_stats->rx_bytes += devRxStats->ucastBytesRxOK +
				      devRxStats->mcastBytesRxOK +
				      devRxStats->bcastBytesRxOK;

		net_stats->rx_errors += devRxStats->pktsRxError;
		net_stats->rx_dropped += drvRxStats->drop_total;
		net_stats->multicast +=  devRxStats->mcastPktsRxOK;
	}
	return net_stats;
}