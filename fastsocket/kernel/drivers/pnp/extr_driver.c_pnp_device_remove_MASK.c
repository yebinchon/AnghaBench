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
struct pnp_driver {int /*<<< orphan*/  (* remove ) (struct pnp_dev*) ;} ;
struct pnp_dev {struct pnp_driver* driver; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pnp_dev*) ; 
 struct pnp_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct pnp_dev *pnp_dev = FUNC2(dev);
	struct pnp_driver *drv = pnp_dev->driver;

	if (drv) {
		if (drv->remove)
			drv->remove(pnp_dev);
		pnp_dev->driver = NULL;
	}
	FUNC0(pnp_dev);
	return 0;
}