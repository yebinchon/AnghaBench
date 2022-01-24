#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int (* acpi_processor_get_throttling ) (struct acpi_processor*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  throttling; } ;
struct acpi_processor {TYPE_2__ throttling; int /*<<< orphan*/  id; TYPE_1__ flags; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;
struct TYPE_7__ {int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct acpi_processor*) ; 

__attribute__((used)) static int FUNC6(struct acpi_processor *pr)
{
	cpumask_var_t saved_mask;
	int ret;

	if (!pr)
		return -EINVAL;

	if (!pr->flags.throttling)
		return -ENODEV;

	if (!FUNC0(&saved_mask, GFP_KERNEL))
		return -ENOMEM;

	/*
	 * Migrate task to the cpu pointed by pr.
	 */
	FUNC1(saved_mask, &current->cpus_allowed);
	/* FIXME: use work_on_cpu() */
	FUNC4(current, FUNC2(pr->id));
	ret = pr->throttling.acpi_processor_get_throttling(pr);
	/* restore the previous state */
	FUNC4(current, saved_mask);
	FUNC3(saved_mask);

	return ret;
}