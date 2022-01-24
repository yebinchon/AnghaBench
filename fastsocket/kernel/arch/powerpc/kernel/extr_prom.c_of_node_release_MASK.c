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
struct property {struct property* data; struct property* full_name; struct property* deadprops; struct property* value; struct property* name; struct property* next; int /*<<< orphan*/  kref; struct property* properties; } ;
struct kref {int dummy; } ;
struct device_node {struct device_node* data; struct device_node* full_name; struct device_node* deadprops; struct device_node* value; struct device_node* name; struct device_node* next; int /*<<< orphan*/  kref; struct device_node* properties; } ;

/* Variables and functions */
 int /*<<< orphan*/  OF_DETACHED ; 
 int /*<<< orphan*/  OF_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct property*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct property* FUNC3 (struct kref*) ; 
 int /*<<< orphan*/  FUNC4 (struct property*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct property*) ; 

__attribute__((used)) static void FUNC6(struct kref *kref)
{
	struct device_node *node = FUNC3(kref);
	struct property *prop = node->properties;

	/* We should never be releasing nodes that haven't been detached. */
	if (!FUNC4(node, OF_DETACHED)) {
		FUNC5("WARNING: Bad of_node_put() on %s\n", node->full_name);
		FUNC0();
		FUNC2(&node->kref);
		return;
	}

	if (!FUNC4(node, OF_DYNAMIC))
		return;

	while (prop) {
		struct property *next = prop->next;
		FUNC1(prop->name);
		FUNC1(prop->value);
		FUNC1(prop);
		prop = next;

		if (!prop) {
			prop = node->deadprops;
			node->deadprops = NULL;
		}
	}
	FUNC1(node->full_name);
	FUNC1(node->data);
	FUNC1(node);
}