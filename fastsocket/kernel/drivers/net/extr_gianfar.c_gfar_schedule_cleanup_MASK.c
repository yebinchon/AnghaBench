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
struct net_device {int dummy; } ;
struct gfar_private {int /*<<< orphan*/  txlock; int /*<<< orphan*/  rxlock; TYPE_1__* regs; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  ievent; int /*<<< orphan*/  imask; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEVENT_RTX_MASK ; 
 int /*<<< orphan*/  IMASK_RTX_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct gfar_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct gfar_private *priv = FUNC3(dev);
	unsigned long flags;

	FUNC5(&priv->txlock, flags);
	FUNC4(&priv->rxlock);

	if (FUNC2(&priv->napi)) {
		FUNC1(&priv->regs->imask, IMASK_RTX_DISABLED);
		FUNC0(&priv->napi);
	} else {
		/*
		 * Clear IEVENT, so interrupts aren't called again
		 * because of the packets that have already arrived.
		 */
		FUNC1(&priv->regs->ievent, IEVENT_RTX_MASK);
	}

	FUNC6(&priv->rxlock);
	FUNC7(&priv->txlock, flags);
}