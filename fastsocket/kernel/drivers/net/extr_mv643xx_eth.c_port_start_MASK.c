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
typedef  int u32 ;
struct tx_queue {int dummy; } ;
struct rx_queue {int rx_curr_desc; scalar_t__ rx_desc_dma; } ;
struct rx_desc {int dummy; } ;
struct mv643xx_eth_private {int txq_count; int rxq_count; struct rx_queue* rxq; int /*<<< orphan*/  dev; struct tx_queue* txq; int /*<<< orphan*/ * phy; } ;
struct ethtool_cmd {int dummy; } ;

/* Variables and functions */
 int DO_NOT_FORCE_LINK_FAIL ; 
 int FORCE_LINK_PASS ; 
 int /*<<< orphan*/  PORT_CONFIG ; 
 int /*<<< orphan*/  PORT_CONFIG_EXT ; 
 int /*<<< orphan*/  PORT_SERIAL_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SERIAL_PORT_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv643xx_eth_private*) ; 
 int FUNC5 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rx_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct mv643xx_eth_private*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tx_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct tx_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct tx_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct mv643xx_eth_private *mp)
{
	u32 pscr;
	int i;

	/*
	 * Perform PHY reset, if there is a PHY.
	 */
	if (mp->phy != NULL) {
		struct ethtool_cmd cmd;

		FUNC1(mp->dev, &cmd);
		FUNC4(mp);
		FUNC3(mp->dev, &cmd);
	}

	/*
	 * Configure basic link parameters.
	 */
	pscr = FUNC5(mp, PORT_SERIAL_CONTROL);

	pscr |= SERIAL_PORT_ENABLE;
	FUNC11(mp, PORT_SERIAL_CONTROL, pscr);

	pscr |= DO_NOT_FORCE_LINK_FAIL;
	if (mp->phy == NULL)
		pscr |= FORCE_LINK_PASS;
	FUNC11(mp, PORT_SERIAL_CONTROL, pscr);

	/*
	 * Configure TX path and queues.
	 */
	FUNC7(mp, 1000000000, 16777216);
	for (i = 0; i < mp->txq_count; i++) {
		struct tx_queue *txq = mp->txq + i;

		FUNC8(txq);
		FUNC10(txq, 1000000000, 16777216);
		FUNC9(txq);
	}

	/*
	 * Receive all unmatched unicast, TCP, UDP, BPDU and broadcast
	 * frames to RX queue #0, and include the pseudo-header when
	 * calculating receive checksums.
	 */
	FUNC11(mp, PORT_CONFIG, 0x02000000);

	/*
	 * Treat BPDUs as normal multicasts, and disable partition mode.
	 */
	FUNC11(mp, PORT_CONFIG_EXT, 0x00000000);

	/*
	 * Add configured unicast addresses to address filter table.
	 */
	FUNC2(mp->dev);

	/*
	 * Enable the receive queues.
	 */
	for (i = 0; i < mp->rxq_count; i++) {
		struct rx_queue *rxq = mp->rxq + i;
		u32 addr;

		addr = (u32)rxq->rx_desc_dma;
		addr += rxq->rx_curr_desc * sizeof(struct rx_desc);
		FUNC11(mp, FUNC0(i), addr);

		FUNC6(rxq);
	}
}