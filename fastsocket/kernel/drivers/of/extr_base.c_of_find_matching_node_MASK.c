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
struct of_device_id {int dummy; } ;
struct device_node {struct device_node* allnext; } ;

/* Variables and functions */
 struct device_node* allnodes ; 
 int /*<<< orphan*/  devtree_lock ; 
 scalar_t__ FUNC0 (struct of_device_id const*,struct device_node*) ; 
 scalar_t__ FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct device_node *FUNC5(struct device_node *from,
					  const struct of_device_id *matches)
{
	struct device_node *np;

	FUNC3(&devtree_lock);
	np = from ? from->allnext : allnodes;
	for (; np; np = np->allnext) {
		if (FUNC0(matches, np) && FUNC1(np))
			break;
	}
	FUNC2(from);
	FUNC4(&devtree_lock);
	return np;
}