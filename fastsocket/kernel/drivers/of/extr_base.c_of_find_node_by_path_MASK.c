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
struct device_node {scalar_t__ full_name; struct device_node* allnext; } ;

/* Variables and functions */
 struct device_node* allnodes ; 
 int /*<<< orphan*/  devtree_lock ; 
 scalar_t__ FUNC0 (scalar_t__,char const*) ; 
 scalar_t__ FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct device_node *FUNC4(const char *path)
{
	struct device_node *np = allnodes;

	FUNC2(&devtree_lock);
	for (; np; np = np->allnext) {
		if (np->full_name && (FUNC0(np->full_name, path) == 0)
		    && FUNC1(np))
			break;
	}
	FUNC3(&devtree_lock);
	return np;
}