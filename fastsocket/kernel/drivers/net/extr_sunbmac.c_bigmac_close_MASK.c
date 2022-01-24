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
struct net_device {int /*<<< orphan*/  irq; } ;
struct bigmac {scalar_t__ timer_ticks; int /*<<< orphan*/  timer_state; int /*<<< orphan*/  bigmac_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  asleep ; 
 int /*<<< orphan*/  FUNC0 (struct bigmac*) ; 
 int /*<<< orphan*/  FUNC1 (struct bigmac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bigmac*) ; 
 struct bigmac* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct bigmac *bp = FUNC4(dev);

	FUNC2(&bp->bigmac_timer);
	bp->timer_state = asleep;
	bp->timer_ticks = 0;

	FUNC1(bp);
	FUNC0(bp);
	FUNC3(dev->irq, bp);
	return 0;
}