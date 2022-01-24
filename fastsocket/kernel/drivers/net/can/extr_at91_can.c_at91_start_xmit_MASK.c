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
struct sk_buff {scalar_t__ data; } ;
struct net_device_stats {int tx_bytes; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_1__ dev; struct net_device_stats stats; } ;
struct can_frame {int can_id; int can_dlc; scalar_t__ data; } ;
struct at91_priv {int tx_next; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_IER ; 
 int /*<<< orphan*/  AT91_MB_MODE_DISABLED ; 
 int /*<<< orphan*/  AT91_MB_MODE_TX ; 
 scalar_t__ AT91_MB_TX_FIRST ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int AT91_MCR_MRTR ; 
 int AT91_MCR_MTCR ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int AT91_MID_MIDE ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int AT91_MSR_MRDY ; 
 int AT91_NEXT_MASK ; 
 int CAN_EFF_FLAG ; 
 int CAN_EFF_MASK ; 
 int CAN_RTR_FLAG ; 
 int CAN_SFF_MASK ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC5 (struct at91_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct at91_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC9 (struct at91_priv*) ; 
 unsigned int FUNC10 (struct at91_priv*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct at91_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct at91_priv*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct at91_priv*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct sk_buff *skb, struct net_device *dev)
{
	struct at91_priv *priv = FUNC11(dev);
	struct net_device_stats *stats = &dev->stats;
	struct can_frame *cf = (struct can_frame *)skb->data;
	unsigned int mb, prio;
	u32 reg_mid, reg_mcr;

	mb = FUNC9(priv);
	prio = FUNC10(priv);

	if (FUNC15(!(FUNC5(priv, FUNC4(mb)) & AT91_MSR_MRDY))) {
		FUNC12(dev);

		FUNC8(dev->dev.parent,
			"BUG! TX buffer full when queue awake!\n");
		return NETDEV_TX_BUSY;
	}

	if (cf->can_id & CAN_EFF_FLAG)
		reg_mid = (cf->can_id & CAN_EFF_MASK) | AT91_MID_MIDE;
	else
		reg_mid = (cf->can_id & CAN_SFF_MASK) << 18;

	reg_mcr = ((cf->can_id & CAN_RTR_FLAG) ? AT91_MCR_MRTR : 0) |
		(cf->can_dlc << 16) | AT91_MCR_MTCR;

	/* disable MB while writing ID (see datasheet) */
	FUNC13(priv, mb, AT91_MB_MODE_DISABLED);
	FUNC6(priv, FUNC3(mb), reg_mid);
	FUNC14(priv, mb, AT91_MB_MODE_TX, prio);

	FUNC6(priv, FUNC2(mb), *(u32 *)(cf->data + 0));
	FUNC6(priv, FUNC1(mb), *(u32 *)(cf->data + 4));

	/* This triggers transmission */
	FUNC6(priv, FUNC0(mb), reg_mcr);

	stats->tx_bytes += cf->can_dlc;
	dev->trans_start = jiffies;

	/* _NOTE_: substract AT91_MB_TX_FIRST offset from mb! */
	FUNC7(skb, dev, mb - AT91_MB_TX_FIRST);

	/*
	 * we have to stop the queue and deliver all messages in case
	 * of a prio+mb counter wrap around. This is the case if
	 * tx_next buffer prio and mailbox equals 0.
	 *
	 * also stop the queue if next buffer is still in use
	 * (== not ready)
	 */
	priv->tx_next++;
	if (!(FUNC5(priv, FUNC4(FUNC9(priv))) &
	      AT91_MSR_MRDY) ||
	    (priv->tx_next & AT91_NEXT_MASK) == 0)
		FUNC12(dev);

	/* Enable interrupt for this mailbox */
	FUNC6(priv, AT91_IER, 1 << mb);

	return NETDEV_TX_OK;
}