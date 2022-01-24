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
struct regulator_bulk_data {int /*<<< orphan*/ * consumer; int /*<<< orphan*/  supply; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct device *dev, int num_consumers,
		       struct regulator_bulk_data *consumers)
{
	int i;
	int ret;

	for (i = 0; i < num_consumers; i++)
		consumers[i].consumer = NULL;

	for (i = 0; i < num_consumers; i++) {
		consumers[i].consumer = FUNC3(dev,
						      consumers[i].supply);
		if (FUNC0(consumers[i].consumer)) {
			FUNC2(dev, "Failed to get supply '%s'\n",
				consumers[i].supply);
			ret = FUNC1(consumers[i].consumer);
			consumers[i].consumer = NULL;
			goto err;
		}
	}

	return 0;

err:
	for (i = 0; i < num_consumers && consumers[i].consumer; i++)
		FUNC4(consumers[i].consumer);

	return ret;
}