#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uli526x_board_info {int cr6_data; int link_failed; int init; scalar_t__ wait_reset; scalar_t__ rx_avail_cnt; scalar_t__ tx_packet_cnt; } ;
struct net_device {scalar_t__ base_addr; } ;

/* Variables and functions */
 int CR6_RXSC ; 
 int CR6_TXSC ; 
 scalar_t__ DCR5 ; 
 scalar_t__ DCR7 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct uli526x_board_info* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct uli526x_board_info*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct uli526x_board_info *db = FUNC1(dev);

	/* Sopt MAC controller */
	db->cr6_data &= ~(CR6_RXSC | CR6_TXSC);	/* Disable Tx/Rx */
	FUNC5(db->cr6_data, dev->base_addr);
	FUNC3(0, dev->base_addr + DCR7);		/* Disable Interrupt */
	FUNC3(FUNC0(dev->base_addr + DCR5), dev->base_addr + DCR5);

	/* Disable upper layer interface */
	FUNC2(dev);

	/* Free Rx Allocate buffer */
	FUNC4(db);

	/* system variable init */
	db->tx_packet_cnt = 0;
	db->rx_avail_cnt = 0;
	db->link_failed = 1;
	db->init=1;
	db->wait_reset = 0;
}