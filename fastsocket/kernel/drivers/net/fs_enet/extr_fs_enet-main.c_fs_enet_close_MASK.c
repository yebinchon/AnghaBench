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
struct net_device {int dummy; } ;
struct fs_enet_private {int /*<<< orphan*/  interrupt; int /*<<< orphan*/ * phydev; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_lock; TYPE_2__* ops; int /*<<< orphan*/  napi; TYPE_1__* fpi; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop ) (struct net_device*) ;} ;
struct TYPE_3__ {scalar_t__ use_napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fs_enet_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct fs_enet_private *fep = FUNC2(dev);
	unsigned long flags;

	FUNC4(dev);
	FUNC3(dev);
	if (fep->fpi->use_napi)
		FUNC1(&fep->napi);
	FUNC6(fep->phydev);

	FUNC8(&fep->lock, flags);
	FUNC7(&fep->tx_lock);
	(*fep->ops->stop)(dev);
	FUNC9(&fep->tx_lock);
	FUNC10(&fep->lock, flags);

	/* release any irqs */
	FUNC5(fep->phydev);
	fep->phydev = NULL;
	FUNC0(fep->interrupt, dev);

	return 0;
}