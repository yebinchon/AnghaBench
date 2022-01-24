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
typedef  size_t u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct sh_eth_txdesc {scalar_t__ buffer_length; int /*<<< orphan*/  status; int /*<<< orphan*/  addr; } ;
struct sh_eth_private {int cur_tx; int dirty_tx; TYPE_1__* cd; struct sh_eth_txdesc* tx_ring; struct sk_buff** tx_skbuff; int /*<<< orphan*/  lock; } ;
struct net_device {int /*<<< orphan*/  trans_start; scalar_t__ base_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_swap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ EDTRR ; 
 int EDTRR_TRNS ; 
 scalar_t__ ETHERSMALL ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int TD_TACT ; 
 int TD_TDLE ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_eth_private*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 struct sh_eth_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC5(ndev);
	struct sh_eth_txdesc *txdesc;
	u32 entry;
	unsigned long flags;

	FUNC10(&mdp->lock, flags);
	if ((mdp->cur_tx - mdp->dirty_tx) >= (TX_RING_SIZE - 4)) {
		if (!FUNC9(ndev)) {
			FUNC6(ndev);
			FUNC11(&mdp->lock, flags);
			return NETDEV_TX_BUSY;
		}
	}
	FUNC11(&mdp->lock, flags);

	entry = mdp->cur_tx % TX_RING_SIZE;
	mdp->tx_skbuff[entry] = skb;
	txdesc = &mdp->tx_ring[entry];
	txdesc->addr = FUNC12(skb->data);
	/* soft swap. */
	if (!mdp->cd->hw_swap)
		FUNC8(FUNC7(FUNC0(txdesc->addr, 4)),
				 skb->len + 2);
	/* write back */
	FUNC1(skb->data, skb->len);
	if (skb->len < ETHERSMALL)
		txdesc->buffer_length = ETHERSMALL;
	else
		txdesc->buffer_length = skb->len;

	if (entry >= TX_RING_SIZE - 1)
		txdesc->status |= FUNC2(mdp, TD_TACT | TD_TDLE);
	else
		txdesc->status |= FUNC2(mdp, TD_TACT);

	mdp->cur_tx++;

	if (!(FUNC3(ndev->base_addr + EDTRR) & EDTRR_TRNS))
		FUNC4(EDTRR_TRNS, ndev->base_addr + EDTRR);

	ndev->trans_start = jiffies;

	return NETDEV_TX_OK;
}