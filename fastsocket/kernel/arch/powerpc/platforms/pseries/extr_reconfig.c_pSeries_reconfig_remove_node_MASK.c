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
struct device_node {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  PSERIES_RECONFIG_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  pSeries_reconfig_chain ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 

__attribute__((used)) static int FUNC6(struct device_node *np)
{
	struct device_node *parent, *child;

	parent = FUNC3(np);
	if (!parent)
		return -EINVAL;

	if ((child = FUNC2(np, NULL))) {
		FUNC4(child);
		FUNC4(parent);
		return -EBUSY;
	}

	FUNC5(np);

	FUNC0(&pSeries_reconfig_chain,
			    PSERIES_RECONFIG_REMOVE, np);
	FUNC1(np);

	FUNC4(parent);
	FUNC4(np); /* Must decrement the refcount */
	return 0;
}