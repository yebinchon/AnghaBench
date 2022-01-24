#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct ei_device {scalar_t__ mem; } ;
struct TYPE_7__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct ax_device {int running; TYPE_3__ mii_timer; TYPE_2__* plat; int /*<<< orphan*/  irqflags; TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  gpoc_val; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  ax_ei_interrupt ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  ax_mii_expiry ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ jiffies ; 
 struct ei_device* FUNC6 (struct net_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 struct ax_device* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct ax_device  *ax = FUNC8(dev);
	struct ei_device *ei_local = FUNC6(dev);
	int ret;

	FUNC3(&ax->dev->dev, "%s: open\n", dev->name);

	ret = FUNC7(dev->irq, ax_ei_interrupt, ax->irqflags,
			  dev->name, dev);
	if (ret)
		return ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;

	/* turn the phy on (if turned off) */

	FUNC4(ax->plat->gpoc_val, ei_local->mem + FUNC0(0x17));
	ax->running = 1;

	/* start the MII timer */

	FUNC5(&ax->mii_timer);

	ax->mii_timer.expires  = jiffies+1;
	ax->mii_timer.data     = (unsigned long) dev;
	ax->mii_timer.function = ax_mii_expiry;

	FUNC1(&ax->mii_timer);

	return 0;
}