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
struct net_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; } ;
struct ethoc {int /*<<< orphan*/  napi; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int INT_MASK_ALL ; 
 int INT_MASK_BUSY ; 
 int INT_MASK_RX ; 
 int INT_MASK_TX ; 
 int /*<<< orphan*/  INT_SOURCE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ethoc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ethoc*,int) ; 
 int FUNC5 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 struct ethoc* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct ethoc *priv = FUNC8(dev);
	u32 pending;

	FUNC3(priv, INT_MASK_ALL);
	pending = FUNC5(priv, INT_SOURCE);
	if (FUNC9(pending == 0)) {
		FUNC4(priv, INT_MASK_ALL);
		return IRQ_NONE;
	}

	FUNC2(priv, pending);

	if (pending & INT_MASK_BUSY) {
		FUNC1(&dev->dev, "packet dropped\n");
		priv->stats.rx_dropped++;
	}

	if (pending & INT_MASK_RX) {
		if (FUNC7(&priv->napi))
			FUNC0(&priv->napi);
	} else {
		FUNC4(priv, INT_MASK_RX);
	}

	if (pending & INT_MASK_TX)
		FUNC6(dev);

	FUNC4(priv, INT_MASK_ALL & ~INT_MASK_RX);
	return IRQ_HANDLED;
}