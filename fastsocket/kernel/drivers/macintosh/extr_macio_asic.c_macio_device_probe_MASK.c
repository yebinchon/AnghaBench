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
struct of_device_id {int dummy; } ;
struct macio_driver {int (* probe ) (struct macio_dev*,struct of_device_id const*) ;int /*<<< orphan*/  match_table; } ;
struct macio_dev {int /*<<< orphan*/  ofdev; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct macio_dev*) ; 
 struct of_device_id* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct macio_dev*,struct of_device_id const*) ; 
 struct macio_dev* FUNC4 (struct device*) ; 
 struct macio_driver* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	int error = -ENODEV;
	struct macio_driver *drv;
	struct macio_dev *macio_dev;
	const struct of_device_id *match;

	drv = FUNC5(dev->driver);
	macio_dev = FUNC4(dev);

	if (!drv->probe)
		return error;

	FUNC0(macio_dev);

	match = FUNC2(drv->match_table, &macio_dev->ofdev);
	if (match)
		error = drv->probe(macio_dev, match);
	if (error)
		FUNC1(macio_dev);

	return error;
}