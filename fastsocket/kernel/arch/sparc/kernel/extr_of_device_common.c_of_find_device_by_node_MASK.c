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
struct of_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  node_match ; 
 int /*<<< orphan*/  of_platform_bus_type ; 
 struct of_device* FUNC1 (struct device*) ; 

struct of_device *FUNC2(struct device_node *dp)
{
	struct device *dev = FUNC0(&of_platform_bus_type, NULL,
					     dp, node_match);

	if (dev)
		return FUNC1(dev);

	return NULL;
}