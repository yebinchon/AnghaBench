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
struct property {int /*<<< orphan*/  name; struct property* next; } ;
struct device_node {struct property* properties; struct device_node* allnext; } ;

/* Variables and functions */
 struct device_node* allnodes ; 
 int /*<<< orphan*/  devtree_lock ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct device_node *FUNC5(struct device_node *from,
	const char *prop_name)
{
	struct device_node *np;
	struct property *pp;

	FUNC3(&devtree_lock);
	np = from ? from->allnext : allnodes;
	for (; np; np = np->allnext) {
		for (pp = np->properties; pp != 0; pp = pp->next) {
			if (FUNC2(pp->name, prop_name) == 0) {
				FUNC0(np);
				goto out;
			}
		}
	}
out:
	FUNC1(from);
	FUNC4(&devtree_lock);
	return np;
}