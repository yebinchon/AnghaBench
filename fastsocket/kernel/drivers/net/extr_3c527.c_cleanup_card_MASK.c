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
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; } ;
struct mc32_local {unsigned int slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC32_IO_EXTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 struct mc32_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct mc32_local *lp = FUNC3(dev);
	unsigned slot = lp->slot;
	FUNC1(slot);
	FUNC2(slot, NULL);
	FUNC0(dev->irq, dev);
	FUNC4(dev->base_addr, MC32_IO_EXTENT);
}