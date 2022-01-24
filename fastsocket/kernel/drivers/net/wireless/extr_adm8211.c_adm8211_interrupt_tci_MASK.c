#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  cb; int /*<<< orphan*/  len; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_tx_ring_info {struct sk_buff* skb; int /*<<< orphan*/  hdrlen; int /*<<< orphan*/  mapping; } ;
struct adm8211_tx_hdr {int dummy; } ;
struct adm8211_priv {unsigned int dirty_tx; unsigned int cur_tx; unsigned int tx_ring_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  pdev; struct adm8211_tx_ring_info* tx_buffers; TYPE_1__* tx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TDES0_CONTROL_DONE ; 
 int TDES0_CONTROL_OWN ; 
 int TDES0_STATUS_ES ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *dev)
{
	struct adm8211_priv *priv = dev->priv;
	unsigned int dirty_tx;

	FUNC9(&priv->lock);

	for (dirty_tx = priv->dirty_tx; priv->cur_tx - dirty_tx; dirty_tx++) {
		unsigned int entry = dirty_tx % priv->tx_ring_size;
		u32 status = FUNC4(priv->tx_ring[entry].status);
		struct ieee80211_tx_info *txi;
		struct adm8211_tx_ring_info *info;
		struct sk_buff *skb;

		if (status & TDES0_CONTROL_OWN ||
		    !(status & TDES0_CONTROL_DONE))
			break;

		info = &priv->tx_buffers[entry];
		skb = info->skb;
		txi = FUNC0(skb);

		/* TODO: check TDES0_STATUS_TUF and TDES0_STATUS_TRO */

		FUNC6(priv->pdev, info->mapping,
				 info->skb->len, PCI_DMA_TODEVICE);

		FUNC1(txi);

		FUNC7(skb, sizeof(struct adm8211_tx_hdr));
		FUNC5(FUNC8(skb, info->hdrlen), skb->cb, info->hdrlen);
		if (!(txi->flags & IEEE80211_TX_CTL_NO_ACK) &&
		    !(status & TDES0_STATUS_ES))
			txi->flags |= IEEE80211_TX_STAT_ACK;

		FUNC2(dev, skb);

		info->skb = NULL;
	}

	if (priv->cur_tx - dirty_tx < priv->tx_ring_size - 2)
		FUNC3(dev, 0);

	priv->dirty_tx = dirty_tx;
	FUNC10(&priv->lock);
}