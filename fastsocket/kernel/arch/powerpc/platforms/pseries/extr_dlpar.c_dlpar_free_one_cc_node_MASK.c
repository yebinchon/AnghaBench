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
struct property {struct property* next; } ;
struct device_node {struct device_node* full_name; struct property* properties; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct property*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 

__attribute__((used)) static void FUNC2(struct device_node *dn)
{
	struct property *prop;

	while (dn->properties) {
		prop = dn->properties;
		dn->properties = prop->next;
		FUNC0(prop);
	}

	FUNC1(dn->full_name);
	FUNC1(dn);
}