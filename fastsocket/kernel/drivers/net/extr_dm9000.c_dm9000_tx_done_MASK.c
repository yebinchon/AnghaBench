#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_7__ {scalar_t__ tx_pkt_cnt; int /*<<< orphan*/  queue_pkt_len; int /*<<< orphan*/  queue_ip_summed; int /*<<< orphan*/  dev; } ;
typedef  TYPE_2__ board_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_NSR ; 
 int NSR_TX1END ; 
 int NSR_TX2END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, board_info_t *db)
{
	int tx_status = FUNC2(db, DM9000_NSR);	/* Got TX status */

	if (tx_status & (NSR_TX2END | NSR_TX1END)) {
		/* One packet sent complete */
		db->tx_pkt_cnt--;
		dev->stats.tx_packets++;

		if (FUNC3(db))
			FUNC0(db->dev, "tx done, NSR %02x\n", tx_status);

		/* Queue packet check & send */
		if (db->tx_pkt_cnt > 0)
			FUNC1(dev, db->queue_ip_summed,
					   db->queue_pkt_len);
		FUNC4(dev);
	}
}