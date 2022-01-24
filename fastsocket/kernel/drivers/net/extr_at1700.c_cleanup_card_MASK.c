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
struct net_local {scalar_t__ mca_slot; } ;
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT1700_IO_EXTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct net_local* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
#ifdef CONFIG_MCA_LEGACY
	struct net_local *lp = netdev_priv(dev);
	if (lp->mca_slot >= 0)
		mca_mark_as_unused(lp->mca_slot);
#endif
	FUNC0(dev->irq, NULL);
	FUNC3(dev->base_addr, AT1700_IO_EXTENT);
}