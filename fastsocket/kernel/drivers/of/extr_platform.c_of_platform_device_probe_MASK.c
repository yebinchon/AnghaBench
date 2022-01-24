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
struct of_platform_driver {int (* probe ) (struct of_device*,struct of_device_id const*) ;int /*<<< orphan*/  match_table; } ;
struct of_device_id {int dummy; } ;
struct of_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct of_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct of_device*) ; 
 struct of_device_id* FUNC2 (int /*<<< orphan*/ ,struct of_device*) ; 
 int FUNC3 (struct of_device*,struct of_device_id const*) ; 
 struct of_device* FUNC4 (struct device*) ; 
 struct of_platform_driver* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	int error = -ENODEV;
	struct of_platform_driver *drv;
	struct of_device *of_dev;
	const struct of_device_id *match;

	drv = FUNC5(dev->driver);
	of_dev = FUNC4(dev);

	if (!drv->probe)
		return error;

	FUNC0(of_dev);

	match = FUNC2(drv->match_table, of_dev);
	if (match)
		error = drv->probe(of_dev, match);
	if (error)
		FUNC1(of_dev);

	return error;
}