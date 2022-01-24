#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct bnad {int num_rx; int num_rxp_per_rx; int num_tx; int num_txq_per_tx; int /*<<< orphan*/  conf_mutex; TYPE_4__* tx_info; TYPE_5__* rx_info; int /*<<< orphan*/  bna; } ;
struct TYPE_10__ {TYPE_3__* rx_ctrl; int /*<<< orphan*/  rx; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx; } ;
struct TYPE_8__ {TYPE_2__* ccb; } ;
struct TYPE_7__ {TYPE_1__** rcb; } ;
struct TYPE_6__ {int /*<<< orphan*/  rxq; } ;

/* Variables and functions */
 int BNAD_ETHTOOL_STATS_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
#define  ETH_SS_STATS 128 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * bnad_net_stats_strings ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct net_device *netdev, u32 stringset, u8 *string)
{
	struct bnad *bnad = FUNC6(netdev);
	int i, j, q_num;
	u32 bmap;

	FUNC4(&bnad->conf_mutex);

	switch (stringset) {
	case ETH_SS_STATS:
		for (i = 0; i < BNAD_ETHTOOL_STATS_NUM; i++) {
			FUNC0(!(FUNC8(bnad_net_stats_strings[i]) <
				   ETH_GSTRING_LEN));
			FUNC3(string, bnad_net_stats_strings[i],
			       ETH_GSTRING_LEN);
			string += ETH_GSTRING_LEN;
		}
		bmap = FUNC2(&bnad->bna);
		for (i = 0; bmap; i++) {
			if (bmap & 1) {
				FUNC7(string, "txf%d_ucast_octets", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_ucast", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_ucast_vlan", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_mcast_octets", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_mcast", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_mcast_vlan", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_bcast_octets", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_bcast", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_bcast_vlan", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_errors", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_filter_vlan", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txf%d_filter_mac_sa", i);
				string += ETH_GSTRING_LEN;
			}
			bmap >>= 1;
		}

		bmap = FUNC1(&bnad->bna);
		for (i = 0; bmap; i++) {
			if (bmap & 1) {
				FUNC7(string, "rxf%d_ucast_octets", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxf%d_ucast", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxf%d_ucast_vlan", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxf%d_mcast_octets", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxf%d_mcast", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxf%d_mcast_vlan", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxf%d_bcast_octets", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxf%d_bcast", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxf%d_bcast_vlan", i);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxf%d_frame_drops", i);
				string += ETH_GSTRING_LEN;
			}
			bmap >>= 1;
		}

		q_num = 0;
		for (i = 0; i < bnad->num_rx; i++) {
			if (!bnad->rx_info[i].rx)
				continue;
			for (j = 0; j < bnad->num_rxp_per_rx; j++) {
				FUNC7(string, "cq%d_producer_index", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "cq%d_consumer_index", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "cq%d_hw_producer_index",
					q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "cq%d_intr", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "cq%d_poll", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "cq%d_schedule", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "cq%d_keep_poll", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "cq%d_complete", q_num);
				string += ETH_GSTRING_LEN;
				q_num++;
			}
		}

		q_num = 0;
		for (i = 0; i < bnad->num_rx; i++) {
			if (!bnad->rx_info[i].rx)
				continue;
			for (j = 0; j < bnad->num_rxp_per_rx; j++) {
				FUNC7(string, "rxq%d_packets", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxq%d_bytes", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxq%d_packets_with_error",
								q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxq%d_allocbuf_failed", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxq%d_producer_index", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "rxq%d_consumer_index", q_num);
				string += ETH_GSTRING_LEN;
				q_num++;
				if (bnad->rx_info[i].rx_ctrl[j].ccb &&
					bnad->rx_info[i].rx_ctrl[j].ccb->
					rcb[1] &&
					bnad->rx_info[i].rx_ctrl[j].ccb->
					rcb[1]->rxq) {
					FUNC7(string, "rxq%d_packets", q_num);
					string += ETH_GSTRING_LEN;
					FUNC7(string, "rxq%d_bytes", q_num);
					string += ETH_GSTRING_LEN;
					FUNC7(string,
					"rxq%d_packets_with_error", q_num);
					string += ETH_GSTRING_LEN;
					FUNC7(string, "rxq%d_allocbuf_failed",
								q_num);
					string += ETH_GSTRING_LEN;
					FUNC7(string, "rxq%d_producer_index",
								q_num);
					string += ETH_GSTRING_LEN;
					FUNC7(string, "rxq%d_consumer_index",
								q_num);
					string += ETH_GSTRING_LEN;
					q_num++;
				}
			}
		}

		q_num = 0;
		for (i = 0; i < bnad->num_tx; i++) {
			if (!bnad->tx_info[i].tx)
				continue;
			for (j = 0; j < bnad->num_txq_per_tx; j++) {
				FUNC7(string, "txq%d_packets", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txq%d_bytes", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txq%d_producer_index", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txq%d_consumer_index", q_num);
				string += ETH_GSTRING_LEN;
				FUNC7(string, "txq%d_hw_consumer_index",
									q_num);
				string += ETH_GSTRING_LEN;
				q_num++;
			}
		}

		break;

	default:
		break;
	}

	FUNC5(&bnad->conf_mutex);
}