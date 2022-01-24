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
struct sir_driver {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* stop_dev ) (struct sir_dev*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  sem; } ;
struct sir_dev {TYPE_1__ fsm; scalar_t__ speed; int /*<<< orphan*/  priv; struct sir_driver* drv; int /*<<< orphan*/ * irlap; int /*<<< orphan*/  enable_rx; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sir_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sir_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct sir_dev*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev)
{
	struct sir_dev *dev = FUNC4(ndev);
	const struct sir_driver *drv;

//	IRDA_DEBUG(0, "%s\n", __func__);

	FUNC5(ndev);

	FUNC1(&dev->fsm.sem);		/* block on pending config completion */

	FUNC0(&dev->enable_rx, 0);

	if (FUNC8(!dev->irlap))
		goto out;
	FUNC2(dev->irlap);
	dev->irlap = NULL;

	drv = dev->drv;
	if (FUNC8(!drv  ||  !dev->priv))
		goto out;

	if (drv->stop_dev)
		drv->stop_dev(dev);

	FUNC6(dev);
	FUNC3(drv->owner);

out:
	dev->speed = 0;
	FUNC9(&dev->fsm.sem);
	return 0;
}