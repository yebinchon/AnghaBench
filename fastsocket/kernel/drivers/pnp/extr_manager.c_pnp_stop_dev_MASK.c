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
struct pnp_dev {int /*<<< orphan*/  dev; TYPE_1__* protocol; } ;
struct TYPE_2__ {scalar_t__ (* disable ) (struct pnp_dev*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (struct pnp_dev*) ; 

int FUNC5(struct pnp_dev *dev)
{
	if (!FUNC2(dev)) {
		FUNC3(&dev->dev, "disabling not supported\n");
		return -EINVAL;
	}
	if (dev->protocol->disable(dev) < 0) {
		FUNC0(&dev->dev, "disable failed\n");
		return -EIO;
	}

	FUNC1(&dev->dev, "disabled\n");
	return 0;
}