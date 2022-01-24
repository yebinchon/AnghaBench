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
struct net_local {int /*<<< orphan*/  dmabuffer; int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct net_local* FUNC1 (struct net_device*) ; 

void FUNC2(struct net_device *dev)
{
	struct net_local *tp;

	tp = FUNC1(dev);
	FUNC0(tp->pdev, tp->dmabuffer, sizeof(struct net_local),
		DMA_BIDIRECTIONAL);
}