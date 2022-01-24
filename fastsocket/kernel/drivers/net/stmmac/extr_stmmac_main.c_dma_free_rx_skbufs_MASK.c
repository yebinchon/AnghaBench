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
struct stmmac_priv {int dma_rx_size; int /*<<< orphan*/ ** rx_skbuff; int /*<<< orphan*/  dma_buf_sz; int /*<<< orphan*/ * rx_skbuff_dma; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stmmac_priv *priv)
{
	int i;

	for (i = 0; i < priv->dma_rx_size; i++) {
		if (priv->rx_skbuff[i]) {
			FUNC1(priv->device, priv->rx_skbuff_dma[i],
					 priv->dma_buf_sz, DMA_FROM_DEVICE);
			FUNC0(priv->rx_skbuff[i]);
		}
		priv->rx_skbuff[i] = NULL;
	}
	return;
}