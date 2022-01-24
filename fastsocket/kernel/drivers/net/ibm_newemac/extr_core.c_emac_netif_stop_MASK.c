#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct emac_instance {int no_mcast; TYPE_1__* ndev; int /*<<< orphan*/  commac; int /*<<< orphan*/  mal; } ;
struct TYPE_6__ {int /*<<< orphan*/  trans_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC6(struct emac_instance *dev)
{
	FUNC4(dev->ndev);
	FUNC1(dev->ndev);
	dev->no_mcast = 1;
	FUNC2(dev->ndev);
	FUNC5(dev->ndev);
	dev->ndev->trans_start = jiffies;	/* prevent tx timeout */
	FUNC0(dev->mal, &dev->commac);
	FUNC3(dev->ndev);
}