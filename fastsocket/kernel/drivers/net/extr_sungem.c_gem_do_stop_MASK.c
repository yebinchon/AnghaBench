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
struct gem {int /*<<< orphan*/  lock; TYPE_1__* pdev; int /*<<< orphan*/  tx_lock; scalar_t__ running; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 int /*<<< orphan*/  FUNC2 (struct gem*) ; 
 int /*<<< orphan*/  FUNC3 (struct gem*) ; 
 int /*<<< orphan*/  FUNC4 (struct gem*) ; 
 int /*<<< orphan*/  FUNC5 (struct gem*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct gem* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC13(struct net_device *dev, int wol)
{
	struct gem *gp = FUNC7(dev);
	unsigned long flags;

	FUNC10(&gp->lock, flags);
	FUNC9(&gp->tx_lock);

	gp->running = 0;

	/* Stop netif queue */
	FUNC8(dev);

	/* Make sure ints are disabled */
	FUNC2(gp);

	/* We can drop the lock now */
	FUNC11(&gp->tx_lock);
	FUNC12(&gp->lock, flags);

	/* If we are going to sleep with WOL */
	FUNC5(gp);
	FUNC6(10);
	if (!wol)
		FUNC4(gp);
	FUNC6(10);

	/* Get rid of rings */
	FUNC1(gp);

	/* No irq needed anymore */
	FUNC0(gp->pdev->irq, (void *) dev);

	/* Cell not needed neither if no WOL */
	if (!wol) {
		FUNC10(&gp->lock, flags);
		FUNC3(gp);
		FUNC12(&gp->lock, flags);
	}
}