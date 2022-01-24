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
struct pnp_dev {int /*<<< orphan*/  card_link; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct pnp_dev*) ;} ;
struct pnp_card_driver {TYPE_1__ link; int /*<<< orphan*/  (* remove ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pnp_card_driver* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pnp_dev *dev)
{
	struct pnp_card_driver *drv = FUNC3(dev->driver);

	if (!dev->card || !drv)
		return;
	if (drv->remove)
		drv->remove(dev->card_link);
	drv->link.remove = &card_remove;
	FUNC1(dev->card_link);
	FUNC0(dev);
}