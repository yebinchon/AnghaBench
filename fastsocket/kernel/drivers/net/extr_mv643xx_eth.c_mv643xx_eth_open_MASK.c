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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct mv643xx_eth_private {int int_mask; int rxq_count; int txq_count; scalar_t__ rxq; scalar_t__ txq; TYPE_1__ rx_oom; scalar_t__ oom; int /*<<< orphan*/  rx_recycle; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int EAGAIN ; 
 int HZ ; 
 int /*<<< orphan*/  INT_CAUSE ; 
 int /*<<< orphan*/  INT_CAUSE_EXT ; 
 int INT_EXT ; 
 int INT_EXT_LINK_PHY ; 
 int INT_EXT_TX ; 
 int /*<<< orphan*/  INT_MASK ; 
 int /*<<< orphan*/  INT_MASK_EXT ; 
 int /*<<< orphan*/  INT_MAX ; 
 int INT_RX_0 ; 
 int INT_TX_END_0 ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  mv643xx_eth_irq ; 
 int /*<<< orphan*/  FUNC3 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mv643xx_eth_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (struct mv643xx_eth_private*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (struct mv643xx_eth_private*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct net_device *dev)
{
	struct mv643xx_eth_private *mp = FUNC5(dev);
	int err;
	int i;

	FUNC15(mp, INT_CAUSE, 0);
	FUNC15(mp, INT_CAUSE_EXT, 0);
	FUNC7(mp, INT_CAUSE_EXT);

	err = FUNC8(dev->irq, mv643xx_eth_irq,
			  IRQF_SHARED, dev->name, dev);
	if (err) {
		FUNC1(KERN_ERR, &dev->dev, "can't assign irq\n");
		return -EAGAIN;
	}

	FUNC3(mp);

	FUNC4(&mp->napi);

	FUNC12(&mp->rx_recycle);

	mp->int_mask = INT_EXT;

	for (i = 0; i < mp->rxq_count; i++) {
		err = FUNC10(mp, i);
		if (err) {
			while (--i >= 0)
				FUNC9(mp->rxq + i);
			goto out;
		}

		FUNC11(mp->rxq + i, INT_MAX);
		mp->int_mask |= INT_RX_0 << i;
	}

	if (mp->oom) {
		mp->rx_oom.expires = jiffies + (HZ / 10);
		FUNC0(&mp->rx_oom);
	}

	for (i = 0; i < mp->txq_count; i++) {
		err = FUNC14(mp, i);
		if (err) {
			while (--i >= 0)
				FUNC13(mp->txq + i);
			goto out_free;
		}
		mp->int_mask |= INT_TX_END_0 << i;
	}

	FUNC6(mp);

	FUNC15(mp, INT_MASK_EXT, INT_EXT_LINK_PHY | INT_EXT_TX);
	FUNC15(mp, INT_MASK, mp->int_mask);

	return 0;


out_free:
	for (i = 0; i < mp->rxq_count; i++)
		FUNC9(mp->rxq + i);
out:
	FUNC2(dev->irq, dev);

	return err;
}