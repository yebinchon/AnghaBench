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
struct pnp_driver {int dummy; } ;
struct pnp_dev {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct pnp_driver*,struct pnp_dev*) ; 
 struct pnp_dev* FUNC1 (struct device*) ; 
 struct pnp_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct pnp_dev *pnp_dev = FUNC1(dev);
	struct pnp_driver *pnp_drv = FUNC2(drv);

	if (FUNC0(pnp_drv, pnp_dev) == NULL)
		return 0;
	return 1;
}