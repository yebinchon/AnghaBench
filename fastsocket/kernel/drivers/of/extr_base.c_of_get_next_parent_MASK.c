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
struct device_node {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  devtree_lock ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct device_node *FUNC4(struct device_node *node)
{
	struct device_node *parent;

	if (!node)
		return NULL;

	FUNC2(&devtree_lock);
	parent = FUNC0(node->parent);
	FUNC1(node);
	FUNC3(&devtree_lock);
	return parent;
}