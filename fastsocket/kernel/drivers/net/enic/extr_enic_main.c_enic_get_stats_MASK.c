#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rx_drop; scalar_t__ rx_no_bufs; int /*<<< orphan*/  rx_multicast_frames_ok; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_bytes_ok; int /*<<< orphan*/  rx_frames_ok; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_drops; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes_ok; int /*<<< orphan*/  tx_frames_ok; } ;
struct vnic_stats {TYPE_2__ rx; TYPE_1__ tx; } ;
struct net_device_stats {scalar_t__ rx_dropped; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct enic {int /*<<< orphan*/  rq_bad_fcs; int /*<<< orphan*/  rq_truncated_pkts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enic*,struct vnic_stats**) ; 
 struct enic* FUNC1 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC2(struct net_device *netdev)
{
	struct enic *enic = FUNC1(netdev);
	struct net_device_stats *net_stats = &netdev->stats;
	struct vnic_stats *stats;

	FUNC0(enic, &stats);

	net_stats->tx_packets = stats->tx.tx_frames_ok;
	net_stats->tx_bytes = stats->tx.tx_bytes_ok;
	net_stats->tx_errors = stats->tx.tx_errors;
	net_stats->tx_dropped = stats->tx.tx_drops;

	net_stats->rx_packets = stats->rx.rx_frames_ok;
	net_stats->rx_bytes = stats->rx.rx_bytes_ok;
	net_stats->rx_errors = stats->rx.rx_errors;
	net_stats->multicast = stats->rx.rx_multicast_frames_ok;
	net_stats->rx_over_errors = enic->rq_truncated_pkts;
	net_stats->rx_crc_errors = enic->rq_bad_fcs;
	net_stats->rx_dropped = stats->rx.rx_no_bufs + stats->rx.rx_drop;

	return net_stats;
}