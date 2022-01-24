#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ kset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ cpu_sysdev_class ; 
 int /*<<< orphan*/  intel_pstate_attr_group ; 
 int /*<<< orphan*/  intel_pstate_kobject ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	int rc;

	intel_pstate_kobject = FUNC1("intel_pstate",
						&cpu_sysdev_class.kset.kobj);

	FUNC0(!intel_pstate_kobject);
	rc = FUNC2(intel_pstate_kobject,
				&intel_pstate_attr_group);
	FUNC0(rc);
}