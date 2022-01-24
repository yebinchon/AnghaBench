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
 struct device_node* FUNC0 (struct device_node*) ; 
 unsigned int* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

unsigned int
FUNC4(struct device_node *node)
{
	struct device_node *np;
	const unsigned int *p_bus_freq = NULL;

	FUNC2(node);
	while (node) {
		p_bus_freq = FUNC1(node, "bus-frequency", NULL);
		if (p_bus_freq)
			break;

		np = FUNC0(node);
		FUNC3(node);
		node = np;
	}
	if (node)
		FUNC3(node);

	return p_bus_freq ? *p_bus_freq : 0;
}