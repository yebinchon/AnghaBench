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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  trans_start; int /*<<< orphan*/  base_addr; } ;
struct dev_priv {unsigned int txhead; unsigned int txhdr; unsigned int* txbuffer; int /*<<< orphan*/  chip_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR0 ; 
 int CSR0_IENA ; 
 int CSR0_TDMD ; 
 int NETDEV_TX_OK ; 
 int TMD_ENP ; 
 int TMD_OWN ; 
 int TMD_STP ; 
 unsigned int TX_BUFFERS ; 
 int FUNC0 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct dev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct dev_priv *priv = FUNC4(dev);
	unsigned int hdraddr, bufaddr;
	unsigned int head;
	unsigned long flags;

	head = priv->txhead;
	hdraddr = priv->txhdr + (head << 3);
	bufaddr = priv->txbuffer[head];
	head += 1;
	if (head >= TX_BUFFERS)
		head = 0;

	FUNC1 (dev, bufaddr, skb->data, skb->len);
	FUNC2 (dev, hdraddr + 4, -skb->len);
	FUNC2 (dev, hdraddr + 2, TMD_OWN|TMD_STP|TMD_ENP);
	priv->txhead = head;

	FUNC6(&priv->chip_lock, flags);
	FUNC8 (dev->base_addr, CSR0, CSR0_TDMD|CSR0_IENA);
	dev->trans_start = jiffies;
	FUNC7(&priv->chip_lock, flags);

	/*
	 * If the next packet is owned by the ethernet device,
	 * then the tx ring is full and we can't add another
	 * packet.
	 */
	if (FUNC0(dev, priv->txhdr + (priv->txhead << 3) + 2) & TMD_OWN)
		FUNC5(dev);

	FUNC3(skb);

	return NETDEV_TX_OK;
}