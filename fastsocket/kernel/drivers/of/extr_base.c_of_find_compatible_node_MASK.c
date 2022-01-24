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
struct device_node {scalar_t__ type; struct device_node* allnext; } ;

/* Variables and functions */
 struct device_node* allnodes ; 
 int /*<<< orphan*/  devtree_lock ; 
 scalar_t__ FUNC0 (struct device_node*,char const*) ; 
 scalar_t__ FUNC1 (scalar_t__,char const*) ; 
 scalar_t__ FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct device_node *FUNC6(struct device_node *from,
	const char *type, const char *compatible)
{
	struct device_node *np;

	FUNC4(&devtree_lock);
	np = from ? from->allnext : allnodes;
	for (; np; np = np->allnext) {
		if (type
		    && !(np->type && (FUNC1(np->type, type) == 0)))
			continue;
		if (FUNC0(np, compatible) && FUNC2(np))
			break;
	}
	FUNC3(from);
	FUNC5(&devtree_lock);
	return np;
}