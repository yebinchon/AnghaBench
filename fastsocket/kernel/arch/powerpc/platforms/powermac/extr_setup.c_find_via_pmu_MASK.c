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
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(void)
{
	struct device_node *dn = FUNC0(NULL, "via-pmu");

	if (!dn)
		return 0;
	FUNC1(dn);
	FUNC2("WARNING ! Your machine is PMU-based but your kernel\n");
	FUNC2("          wasn't compiled with CONFIG_ADB_PMU option !\n");
	return 0;
}