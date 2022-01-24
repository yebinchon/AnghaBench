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
struct net_device {int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; } ;
struct fs_enet_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  cur_tx; scalar_t__ tx_free; int /*<<< orphan*/  phydev; TYPE_2__* ops; TYPE_1__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* restart ) (struct net_device*) ;int /*<<< orphan*/  (* stop ) (struct net_device*) ;} ;

/* Variables and functions */
 int BD_ENET_TX_READY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IFF_UP ; 
 struct fs_enet_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct fs_enet_private *fep = FUNC1(dev);
	unsigned long flags;
	int wake = 0;

	fep->stats.tx_errors++;

	FUNC5(&fep->lock, flags);

	if (dev->flags & IFF_UP) {
		FUNC4(fep->phydev);
		(*fep->ops->stop)(dev);
		(*fep->ops->restart)(dev);
		FUNC3(fep->phydev);
	}

	FUNC3(fep->phydev);
	wake = fep->tx_free && !(FUNC0(fep->cur_tx) & BD_ENET_TX_READY);
	FUNC6(&fep->lock, flags);

	if (wake)
		FUNC2(dev);
}