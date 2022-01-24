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
struct property {int length; void const* value; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void const*) ; 
 struct property* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

const void *FUNC2(struct device_node *np)
{
	struct property *pp;

	pp = FUNC1(np, "mac-address", NULL);
	if (pp && (pp->length == 6) && FUNC0(pp->value))
		return pp->value;

	pp = FUNC1(np, "local-mac-address", NULL);
	if (pp && (pp->length == 6) && FUNC0(pp->value))
		return pp->value;

	pp = FUNC1(np, "address", NULL);
	if (pp && (pp->length == 6) && FUNC0(pp->value))
		return pp->value;

	return NULL;
}