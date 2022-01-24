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
struct net_device {scalar_t__ base_addr; scalar_t__ dma; } ;
struct corkscrew_private {scalar_t__ dev; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORKSCREW_TOTAL_SIZE ; 
 scalar_t__ EL3_CMD ; 
 int /*<<< orphan*/  TotalReset ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct corkscrew_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct corkscrew_private *vp = FUNC2(dev);
	FUNC1(&vp->list);
	if (dev->dma)
		FUNC0(dev->dma);
	FUNC3(TotalReset, dev->base_addr + EL3_CMD);
	FUNC5(dev->base_addr, CORKSCREW_TOTAL_SIZE);
	if (vp->dev)
		FUNC4(FUNC6(vp->dev));
}