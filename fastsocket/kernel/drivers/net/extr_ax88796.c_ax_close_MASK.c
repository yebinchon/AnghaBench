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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct ei_device {scalar_t__ mem; } ;
struct ax_device {int /*<<< orphan*/  mii_timer; scalar_t__ running; TYPE_1__* plat; TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int gpoc_val; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct ei_device* FUNC6 (struct net_device*) ; 
 struct ax_device* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct ax_device *ax = FUNC7(dev);
	struct ei_device *ei_local = FUNC6(dev);

	FUNC3(&ax->dev->dev, "%s: close\n", dev->name);

	/* turn the phy off */

	FUNC4(ax->plat->gpoc_val | (1<<6),
	       ei_local->mem + FUNC0(0x17));

	ax->running = 0;
	FUNC8();

	FUNC2(&ax->mii_timer);
	FUNC1(dev);

	FUNC5(dev->irq, dev);
	return 0;
}