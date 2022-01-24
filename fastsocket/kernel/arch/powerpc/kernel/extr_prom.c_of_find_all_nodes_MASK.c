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
struct device_node {struct device_node* allnext; } ;

/* Variables and functions */
 struct device_node* allnodes ; 
 int /*<<< orphan*/  devtree_lock ; 
 scalar_t__ FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct device_node *FUNC4(struct device_node *prev)
{
	struct device_node *np;

	FUNC2(&devtree_lock);
	np = prev ? prev->allnext : allnodes;
	for (; np != 0; np = np->allnext)
		if (FUNC0(np))
			break;
	FUNC1(prev);
	FUNC3(&devtree_lock);
	return np;
}