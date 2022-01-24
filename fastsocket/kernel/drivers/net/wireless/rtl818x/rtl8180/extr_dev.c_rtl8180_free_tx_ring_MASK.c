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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct rtl8180_tx_ring {size_t idx; int entries; struct rtl8180_tx_desc* desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  queue; } ;
struct rtl8180_tx_desc {int /*<<< orphan*/  tx_buf; } ;
struct rtl8180_priv {int /*<<< orphan*/  pdev; struct rtl8180_tx_ring* tx_ring; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct rtl8180_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *dev, unsigned int prio)
{
	struct rtl8180_priv *priv = dev->priv;
	struct rtl8180_tx_ring *ring = &priv->tx_ring[prio];

	while (FUNC5(&ring->queue)) {
		struct rtl8180_tx_desc *entry = &ring->desc[ring->idx];
		struct sk_buff *skb = FUNC0(&ring->queue);

		FUNC4(priv->pdev, FUNC2(entry->tx_buf),
				 skb->len, PCI_DMA_TODEVICE);
		FUNC1(skb);
		ring->idx = (ring->idx + 1) % ring->entries;
	}

	FUNC3(priv->pdev, sizeof(*ring->desc)*ring->entries,
			    ring->desc, ring->dma);
	ring->desc = NULL;
}