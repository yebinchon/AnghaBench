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
struct property {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct property* FUNC0 (char const*,int,void const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,struct property*) ; 

__attribute__((used)) static int FUNC2(struct device_node *np, const char *name,
		int length, const void *value)
{
	struct property *nprop = FUNC0(name, length, value);

	if (!nprop)
		return 0;
	FUNC1(np, nprop);
	return 1;
}