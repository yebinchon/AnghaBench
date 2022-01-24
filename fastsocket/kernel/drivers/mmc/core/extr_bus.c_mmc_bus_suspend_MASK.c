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
struct mmc_driver {int (* suspend ) (struct mmc_card*,int /*<<< orphan*/ ) ;} ;
struct mmc_card {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 struct mmc_card* FUNC0 (struct device*) ; 
 int FUNC1 (struct mmc_card*,int /*<<< orphan*/ ) ; 
 struct mmc_driver* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev, pm_message_t state)
{
	struct mmc_driver *drv = FUNC2(dev->driver);
	struct mmc_card *card = FUNC0(dev);
	int ret = 0;

	if (dev->driver && drv->suspend)
		ret = drv->suspend(card, state);
	return ret;
}