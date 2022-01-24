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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct dscc4_dev_priv {int tx_dirty; struct sk_buff** tx_skbuff; TYPE_1__* pci_priv; struct TxFD* tx_fd; } ;
struct TxFD {int state; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int DUMMY_SKB_SIZE ; 
 int FrameEnd ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int FUNC0 (int) ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct dscc4_dev_priv *dpriv)
{
	struct sk_buff *skb;

	skb = FUNC2(DUMMY_SKB_SIZE);
	if (skb) {
		int last = dpriv->tx_dirty%TX_RING_SIZE;
		struct TxFD *tx_fd = dpriv->tx_fd + last;

		skb->len = DUMMY_SKB_SIZE;
		FUNC4(skb, version,
					FUNC5(version) % DUMMY_SKB_SIZE);
		tx_fd->state = FrameEnd | FUNC0(DUMMY_SKB_SIZE);
		tx_fd->data = FUNC1(FUNC3(dpriv->pci_priv->pdev,
					     skb->data, DUMMY_SKB_SIZE,
					     PCI_DMA_TODEVICE));
		dpriv->tx_skbuff[last] = skb;
	}
	return skb;
}