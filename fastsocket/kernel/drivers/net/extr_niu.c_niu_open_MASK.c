#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ loopback_mode; } ;
struct niu {TYPE_2__ timer; TYPE_1__ link_config; int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 scalar_t__ LOOPBACK_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 struct niu* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct niu*) ; 
 int /*<<< orphan*/  FUNC7 (struct niu*) ; 
 int FUNC8 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct niu*) ; 
 int /*<<< orphan*/  FUNC10 (struct niu*) ; 
 int /*<<< orphan*/  FUNC11 (struct niu*) ; 
 int FUNC12 (struct niu*) ; 
 int FUNC13 (struct niu*) ; 
 int /*<<< orphan*/  FUNC14 (struct niu*) ; 
 int /*<<< orphan*/  niu_timer ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct net_device *dev)
{
	struct niu *np = FUNC2(dev);
	int err;

	FUNC3(dev);

	err = FUNC6(np);
	if (err)
		goto out_err;

	err = FUNC8(np, 0);
	if (err)
		goto out_free_channels;

	err = FUNC13(np);
	if (err)
		goto out_free_channels;

	FUNC9(np);

	FUNC15(&np->lock);

	err = FUNC12(np);
	if (!err) {
		FUNC1(&np->timer);
		np->timer.expires = jiffies + HZ;
		np->timer.data = (unsigned long) np;
		np->timer.function = niu_timer;

		err = FUNC8(np, 1);
		if (err)
			FUNC14(np);
	}

	FUNC16(&np->lock);

	if (err) {
		FUNC7(np);
		goto out_free_irq;
	}

	FUNC5(dev);

	if (np->link_config.loopback_mode != LOOPBACK_DISABLED)
		FUNC4(dev);

	FUNC0(&np->timer);

	return 0;

out_free_irq:
	FUNC11(np);

out_free_channels:
	FUNC10(np);

out_err:
	return err;
}