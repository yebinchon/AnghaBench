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
struct net_device {int dummy; } ;
struct ethoc_bd {int stat; } ;
struct ethoc {int dty_tx; int cur_tx; unsigned int num_tx; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MASK_TX ; 
 int TX_BD_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethoc*,unsigned int,struct ethoc_bd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,struct ethoc_bd*) ; 
 struct ethoc* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct ethoc *priv = FUNC3(dev);

	FUNC5(&priv->lock);

	while (priv->dty_tx != priv->cur_tx) {
		unsigned int entry = priv->dty_tx % priv->num_tx;
		struct ethoc_bd bd;

		FUNC1(priv, entry, &bd);
		if (bd.stat & TX_BD_READY)
			break;

		entry = (++priv->dty_tx) % priv->num_tx;
		(void)FUNC2(priv, &bd);
	}

	if ((priv->cur_tx - priv->dty_tx) <= (priv->num_tx / 2))
		FUNC4(dev);

	FUNC0(priv, INT_MASK_TX);
	FUNC6(&priv->lock);
}