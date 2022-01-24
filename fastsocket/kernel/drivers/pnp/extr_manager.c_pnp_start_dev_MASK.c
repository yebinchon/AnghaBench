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
struct TYPE_2__ {scalar_t__ (* set ) (struct pnp_dev*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct pnp_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (struct pnp_dev*) ; 

int FUNC6(struct pnp_dev *dev)
{
	if (!FUNC3(dev)) {
		FUNC4(&dev->dev, "activation not supported\n");
		return -EINVAL;
	}

	FUNC0(dev, "pnp_start_dev");
	if (dev->protocol->set(dev) < 0) {
		FUNC1(&dev->dev, "activation failed\n");
		return -EIO;
	}

	FUNC2(&dev->dev, "activated\n");
	return 0;
}