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
struct gameport_driver {int /*<<< orphan*/  (* connect ) (struct gameport*,struct gameport_driver*) ;} ;
struct gameport {int /*<<< orphan*/  drv; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct gameport*,struct gameport_driver*) ; 
 struct gameport_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 struct gameport* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct gameport *gameport = FUNC2(dev);
	struct gameport_driver *drv = FUNC1(dev->driver);

	drv->connect(gameport, drv);
	return gameport->drv ? 0 : -ENODEV;
}