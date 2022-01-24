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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct net_device {void* trans_start; } ;
struct dscc4_pci_priv {int /*<<< orphan*/  pdev; } ;
struct dscc4_dev_priv {int tx_current; int tx_dirty; int /*<<< orphan*/  lock; struct TxFD* tx_fd; struct sk_buff** tx_skbuff; struct dscc4_pci_priv* pci_priv; } ;
struct TxFD {int state; int complete; void* jiffies; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int FrameEnd ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC2 (struct dscc4_dev_priv*,struct net_device*) ; 
 struct dscc4_dev_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct dscc4_dev_priv*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct dscc4_dev_priv*,char*) ; 
 scalar_t__ FUNC6 (struct dscc4_dev_priv*,struct net_device*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC12(struct sk_buff *skb,
					  struct net_device *dev)
{
	struct dscc4_dev_priv *dpriv = FUNC3(dev);
	struct dscc4_pci_priv *ppriv = dpriv->pci_priv;
	struct TxFD *tx_fd;
	int next;

	next = dpriv->tx_current%TX_RING_SIZE;
	dpriv->tx_skbuff[next] = skb;
	tx_fd = dpriv->tx_fd + next;
	tx_fd->state = FrameEnd | FUNC0(skb->len);
	tx_fd->data = FUNC1(FUNC9(ppriv->pdev, skb->data, skb->len,
				     PCI_DMA_TODEVICE));
	tx_fd->complete = 0x00000000;
	tx_fd->jiffies = jiffies;
	FUNC7();

#ifdef DSCC4_POLLING
	spin_lock(&dpriv->lock);
	while (dscc4_tx_poll(dpriv, dev));
	spin_unlock(&dpriv->lock);
#endif

	dev->trans_start = jiffies;

	if (debug > 2)
		FUNC5(dev, dpriv, "Xmit");
	/* To be cleaned(unsigned int)/optimized. Later, ok ? */
	if (!((++dpriv->tx_current - dpriv->tx_dirty)%TX_RING_SIZE))
		FUNC8(dev);

	if (FUNC6(dpriv, dev))
		FUNC2(dpriv, dev);

	return NETDEV_TX_OK;
}