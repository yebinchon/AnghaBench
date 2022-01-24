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
struct meth_private {int /*<<< orphan*/  tx_ring_dma; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/ ** tx_skbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_RING_BUFFER_SIZE ; 
 int TX_RING_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct meth_private *priv)
{
	int i;

	/* Remove any pending skb */
	for (i = 0; i < TX_RING_ENTRIES; i++) {
		if (priv->tx_skbs[i])
			FUNC0(priv->tx_skbs[i]);
		priv->tx_skbs[i] = NULL;
	}
	FUNC1(NULL, TX_RING_BUFFER_SIZE, priv->tx_ring,
	                  priv->tx_ring_dma);
}