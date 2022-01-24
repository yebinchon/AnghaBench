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
struct device_node {scalar_t__ linux_phandle; struct device_node* allnext; } ;
typedef  scalar_t__ phandle ;

/* Variables and functions */
 struct device_node* allnodes ; 
 int /*<<< orphan*/  devtree_lock ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct device_node *FUNC3(phandle handle)
{
	struct device_node *np;

	FUNC1(&devtree_lock);
	for (np = allnodes; np != 0; np = np->allnext)
		if (np->linux_phandle == handle)
			break;
	FUNC0(np);
	FUNC2(&devtree_lock);
	return np;
}