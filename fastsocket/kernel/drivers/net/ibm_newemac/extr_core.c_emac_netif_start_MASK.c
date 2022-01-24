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
struct emac_instance {int /*<<< orphan*/  commac; int /*<<< orphan*/  mal; int /*<<< orphan*/  ndev; scalar_t__ mcast_pending; scalar_t__ no_mcast; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_instance*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC8(struct emac_instance *dev)
{
	FUNC5(dev->ndev);
	FUNC2(dev->ndev);
	dev->no_mcast = 0;
	if (dev->mcast_pending && FUNC4(dev->ndev))
		FUNC0(dev);
	FUNC3(dev->ndev);
	FUNC6(dev->ndev);

	FUNC7(dev->ndev);

	/* NOTE: unconditional netif_wake_queue is only appropriate
	 * so long as all callers are assured to have free tx slots
	 * (taken from tg3... though the case where that is wrong is
	 *  not terribly harmful)
	 */
	FUNC1(dev->mal, &dev->commac);
}