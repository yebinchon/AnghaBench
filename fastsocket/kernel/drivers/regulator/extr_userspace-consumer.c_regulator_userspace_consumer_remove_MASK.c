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
struct userspace_consumer_data {int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; scalar_t__ enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  attr_group ; 
 int /*<<< orphan*/  FUNC0 (struct userspace_consumer_data*) ; 
 struct userspace_consumer_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct userspace_consumer_data *data = FUNC1(pdev);

	FUNC4(&pdev->dev.kobj, &attr_group);

	if (data->enabled)
		FUNC2(data->num_supplies, data->supplies);

	FUNC3(data->num_supplies, data->supplies);
	FUNC0(data);

	return 0;
}