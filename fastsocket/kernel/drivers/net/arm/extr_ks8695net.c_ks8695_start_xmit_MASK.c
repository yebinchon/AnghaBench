#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  trans_start; int /*<<< orphan*/  name; } ;
struct ks8695_priv {scalar_t__ tx_ring_used; int tx_ring_next_slot; int /*<<< orphan*/  txq_lock; TYPE_2__* tx_ring; TYPE_1__* tx_buffers; int /*<<< orphan*/  dev; } ;
typedef  int dma_addr_t ;
struct TYPE_4__ {void* owner; void* status; void* data_ptr; } ;
struct TYPE_3__ {int dma_ptr; int length; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  KS8695_DTSC ; 
 scalar_t__ MAX_TX_DESC ; 
 int MAX_TX_DESC_MASK ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int TDES_FS ; 
 int TDES_IC ; 
 int TDES_LS ; 
 int TDES_OWN ; 
 int TDES_TBS ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct ks8695_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ks8695_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int
FUNC12(struct sk_buff *skb, struct net_device *ndev)
{
	struct ks8695_priv *ksp = FUNC6(ndev);
	int buff_n;
	dma_addr_t dmap;

	FUNC8(&ksp->txq_lock);

	if (ksp->tx_ring_used == MAX_TX_DESC) {
		/* Somehow we got entered when we have no room */
		FUNC9(&ksp->txq_lock);
		return NETDEV_TX_BUSY;
	}

	buff_n = ksp->tx_ring_next_slot;

	FUNC0(ksp->tx_buffers[buff_n].skb);

	dmap = FUNC3(ksp->dev, skb->data, skb->len, DMA_TO_DEVICE);
	if (FUNC10(FUNC4(ksp->dev, dmap))) {
		/* Failed to DMA map this SKB, give it back for now */
		FUNC9(&ksp->txq_lock);
		FUNC2(ksp->dev, "%s: Could not map DMA memory for "\
			"transmission, trying later\n", ndev->name);
		return NETDEV_TX_BUSY;
	}

	ksp->tx_buffers[buff_n].dma_ptr = dmap;
	/* Mapped okay, store the buffer pointer and length for later */
	ksp->tx_buffers[buff_n].skb = skb;
	ksp->tx_buffers[buff_n].length = skb->len;

	/* Fill out the TX descriptor */
	ksp->tx_ring[buff_n].data_ptr =
		FUNC1(ksp->tx_buffers[buff_n].dma_ptr);
	ksp->tx_ring[buff_n].status =
		FUNC1(TDES_IC | TDES_FS | TDES_LS |
			    (skb->len & TDES_TBS));

	FUNC11();

	/* Hand it over to the hardware */
	ksp->tx_ring[buff_n].owner = FUNC1(TDES_OWN);

	if (++ksp->tx_ring_used == MAX_TX_DESC)
		FUNC7(ndev);

	ndev->trans_start = jiffies;

	/* Kick the TX DMA in case it decided to go IDLE */
	FUNC5(ksp, KS8695_DTSC, 0);

	/* And update the next ring slot */
	ksp->tx_ring_next_slot = (buff_n + 1) & MAX_TX_DESC_MASK;

	FUNC9(&ksp->txq_lock);
	return NETDEV_TX_OK;
}