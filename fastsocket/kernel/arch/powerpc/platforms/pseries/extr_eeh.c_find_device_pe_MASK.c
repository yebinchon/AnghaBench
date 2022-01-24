#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device_node {struct device_node* parent; } ;
struct TYPE_2__ {int eeh_mode; } ;

/* Variables and functions */
 int EEH_MODE_SUPPORTED ; 
 TYPE_1__* FUNC0 (struct device_node*) ; 

struct device_node * FUNC1(struct device_node *dn)
{
	while ((dn->parent) && FUNC0(dn->parent) &&
	      (FUNC0(dn->parent)->eeh_mode & EEH_MODE_SUPPORTED)) {
		dn = dn->parent;
	}
	return dn;
}