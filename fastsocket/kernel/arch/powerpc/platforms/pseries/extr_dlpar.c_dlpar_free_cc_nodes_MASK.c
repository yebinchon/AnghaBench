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
struct device_node {struct device_node* sibling; struct device_node* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 

__attribute__((used)) static void FUNC1(struct device_node *dn)
{
	if (dn->child)
		FUNC1(dn->child);

	if (dn->sibling)
		FUNC1(dn->sibling);

	FUNC0(dn);
}