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
struct property {struct property* next; int /*<<< orphan*/  name; } ;
struct device_node {scalar_t__ pde; struct property* properties; } ;

/* Variables and functions */
 int /*<<< orphan*/  devtree_lock ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct property*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct device_node *np, struct property *prop)
{
	struct property **next;
	unsigned long flags;

	prop->next = NULL;
	FUNC2(&devtree_lock, flags);
	next = &np->properties;
	while (*next) {
		if (FUNC1(prop->name, (*next)->name) == 0) {
			/* duplicate ! don't insert it */
			FUNC3(&devtree_lock, flags);
			return -1;
		}
		next = &(*next)->next;
	}
	*next = prop;
	FUNC3(&devtree_lock, flags);

#ifdef CONFIG_PROC_DEVICETREE
	/* try to add to proc as well if it was initialized */
	if (np->pde)
		proc_device_tree_add_prop(np->pde, prop);
#endif /* CONFIG_PROC_DEVICETREE */

	return 0;
}