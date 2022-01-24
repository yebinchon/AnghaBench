#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct ixgbe_ring {TYPE_1__ stats; } ;
struct TYPE_5__ {scalar_t__* pxoffrxc; scalar_t__* pxonrxc; scalar_t__* pxofftxc; scalar_t__* pxontxc; } ;
struct ixgbe_adapter {TYPE_2__ stats; struct ixgbe_ring** rx_ring; struct ixgbe_ring** tx_ring; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_6__ {int type; int sizeof_stat; int /*<<< orphan*/  stat_offset; } ;

/* Variables and functions */
 int IXGBE_GLOBAL_STATS_LEN ; 
 int IXGBE_MAX_PACKET_BUFFERS ; 
 int IXGBE_NUM_RX_QUEUES ; 
#define  IXGBE_STATS 129 
#define  NETDEV_STATS 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_3__* ixgbe_gstrings_stats ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
                                    struct ethtool_stats *stats, u64 *data)
{
	struct ixgbe_adapter *adapter = FUNC2(netdev);
	struct ixgbe_ring *ring;
	int i, j;
	char *p = NULL;

	FUNC1(adapter);
	FUNC0(netdev);
	for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++) {
		switch (ixgbe_gstrings_stats[i].type) {
		case NETDEV_STATS:
			p = (char *) netdev +
					ixgbe_gstrings_stats[i].stat_offset;
			break;
		case IXGBE_STATS:
			p = (char *) adapter +
					ixgbe_gstrings_stats[i].stat_offset;
			break;
		default:
			data[i] = 0;
			continue;
		}

		data[i] = (ixgbe_gstrings_stats[i].sizeof_stat ==
		           sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
	}
	for (j = 0; j < IXGBE_NUM_RX_QUEUES; j++) {
		ring = adapter->tx_ring[j];
		if (!ring) {
			data[i] = 0;
			data[i+1] = 0;
			i += 2;
			continue;
		}

		do {
			data[i]   = ring->stats.packets;
			data[i+1] = ring->stats.bytes;
		} while (0);
		i += 2;
	}
	for (j = 0; j < IXGBE_NUM_RX_QUEUES; j++) {
		ring = adapter->rx_ring[j];
		if (!ring) {
			data[i] = 0;
			data[i+1] = 0;
			i += 2;
			continue;
		}

		do {
			data[i]   = ring->stats.packets;
			data[i+1] = ring->stats.bytes;
		} while (0);
		i += 2;
	}

	for (j = 0; j < IXGBE_MAX_PACKET_BUFFERS; j++) {
		data[i++] = adapter->stats.pxontxc[j];
		data[i++] = adapter->stats.pxofftxc[j];
	}
	for (j = 0; j < IXGBE_MAX_PACKET_BUFFERS; j++) {
		data[i++] = adapter->stats.pxonrxc[j];
		data[i++] = adapter->stats.pxoffrxc[j];
	}
}