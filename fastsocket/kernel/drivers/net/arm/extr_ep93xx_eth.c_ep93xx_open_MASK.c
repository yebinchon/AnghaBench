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
struct net_device {int /*<<< orphan*/  name; } ;
struct ep93xx_priv {int /*<<< orphan*/  napi; int /*<<< orphan*/  irq; scalar_t__ tx_pending; int /*<<< orphan*/  tx_pending_lock; scalar_t__ tx_pointer; scalar_t__ tx_clean_pointer; scalar_t__ rx_pointer; int /*<<< orphan*/  rx_lock; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  REG_GIINTMSK ; 
 int /*<<< orphan*/  REG_GIINTMSK_ENABLE ; 
 scalar_t__ FUNC0 (struct ep93xx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_priv*) ; 
 int /*<<< orphan*/  ep93xx_irq ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ep93xx_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ep93xx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct ep93xx_priv *ep = FUNC6(dev);
	int err;

	if (FUNC0(ep))
		return -ENOMEM;

	FUNC5(&ep->napi);

	if (FUNC2(dev)) {
		FUNC4(&ep->napi);
		FUNC1(ep);
		return -EIO;
	}

	FUNC9(&ep->rx_lock);
	ep->rx_pointer = 0;
	ep->tx_clean_pointer = 0;
	ep->tx_pointer = 0;
	FUNC9(&ep->tx_pending_lock);
	ep->tx_pending = 0;

	err = FUNC8(ep->irq, ep93xx_irq, IRQF_SHARED, dev->name, dev);
	if (err) {
		FUNC4(&ep->napi);
		FUNC3(dev);
		FUNC1(ep);
		return err;
	}

	FUNC10(ep, REG_GIINTMSK, REG_GIINTMSK_ENABLE);

	FUNC7(dev);

	return 0;
}