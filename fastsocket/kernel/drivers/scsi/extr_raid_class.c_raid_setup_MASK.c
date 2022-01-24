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
struct transport_container {int dummy; } ;
struct raid_data {int /*<<< orphan*/  component_list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct raid_data*) ; 
 struct raid_data* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct transport_container *tc, struct device *dev,
		       struct device *cdev)
{
	struct raid_data *rd;

	FUNC0(FUNC2(cdev));

	rd = FUNC4(sizeof(*rd), GFP_KERNEL);
	if (!rd)
		return -ENOMEM;

	FUNC1(&rd->component_list);
	FUNC3(cdev, rd);
		
	return 0;
}