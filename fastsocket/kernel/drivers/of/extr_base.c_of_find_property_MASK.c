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
struct property {int length; int /*<<< orphan*/  name; struct property* next; } ;
struct device_node {struct property* properties; } ;

/* Variables and functions */
 int /*<<< orphan*/  devtree_lock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct property *FUNC3(const struct device_node *np,
				  const char *name,
				  int *lenp)
{
	struct property *pp;

	if (!np)
		return NULL;

	FUNC1(&devtree_lock);
	for (pp = np->properties; pp != 0; pp = pp->next) {
		if (FUNC0(pp->name, name) == 0) {
			if (lenp != 0)
				*lenp = pp->length;
			break;
		}
	}
	FUNC2(&devtree_lock);

	return pp;
}