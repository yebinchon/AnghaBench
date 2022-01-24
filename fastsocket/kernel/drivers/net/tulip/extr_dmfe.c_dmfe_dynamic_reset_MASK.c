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
struct dmfe_board_info {int cr6_data; scalar_t__ wait_reset; scalar_t__ rx_avail_cnt; scalar_t__ tx_queue_cnt; scalar_t__ tx_packet_cnt; } ;
struct DEVICE {scalar_t__ base_addr; } ;

/* Variables and functions */
 int CR6_RXSC ; 
 int CR6_TXSC ; 
 scalar_t__ DCR5 ; 
 scalar_t__ DCR7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dmfe_board_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct DEVICE*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct dmfe_board_info* FUNC4 (struct DEVICE*) ; 
 int /*<<< orphan*/  FUNC5 (struct DEVICE*) ; 
 int /*<<< orphan*/  FUNC6 (struct DEVICE*) ; 
 int /*<<< orphan*/  FUNC7 (struct DEVICE*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct DEVICE *dev)
{
	struct dmfe_board_info *db = FUNC4(dev);

	FUNC0(0, "dmfe_dynamic_reset()", 0);

	/* Sopt MAC controller */
	db->cr6_data &= ~(CR6_RXSC | CR6_TXSC);	/* Disable Tx/Rx */
	FUNC9(db->cr6_data, dev->base_addr);
	FUNC8(0, dev->base_addr + DCR7);		/* Disable Interrupt */
	FUNC8(FUNC3(dev->base_addr + DCR5), dev->base_addr + DCR5);

	/* Disable upper layer interface */
	FUNC6(dev);

	/* Free Rx Allocate buffer */
	FUNC1(db);

	/* system variable init */
	db->tx_packet_cnt = 0;
	db->tx_queue_cnt = 0;
	db->rx_avail_cnt = 0;
	FUNC5(dev);
	db->wait_reset = 0;

	/* Re-initilize DM910X board */
	FUNC2(dev);

	/* Restart upper layer interface */
	FUNC7(dev);
}