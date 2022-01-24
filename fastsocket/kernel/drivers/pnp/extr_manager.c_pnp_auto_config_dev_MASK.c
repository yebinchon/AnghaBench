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
struct pnp_dev {int num_dependent_sets; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct pnp_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

int FUNC4(struct pnp_dev *dev)
{
	int i, ret;

	if (!FUNC2(dev)) {
		FUNC3(&dev->dev, "configuration not supported\n");
		return -ENODEV;
	}

	ret = FUNC1(dev, 0);
	if (ret == 0)
		return 0;

	for (i = 1; i < dev->num_dependent_sets; i++) {
		ret = FUNC1(dev, i);
		if (ret == 0)
			return 0;
	}

	FUNC0(&dev->dev, "unable to assign resources\n");
	return ret;
}