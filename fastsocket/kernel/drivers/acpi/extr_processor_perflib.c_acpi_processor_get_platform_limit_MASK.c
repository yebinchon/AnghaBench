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
struct acpi_processor {int performance_platform_limit; int /*<<< orphan*/  id; int /*<<< orphan*/  handle; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NOT_FOUND ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  PPC_IN_USE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  acpi_processor_ppc_status ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC4(struct acpi_processor *pr)
{
	acpi_status status = 0;
	unsigned long long ppc = 0;


	if (!pr)
		return -EINVAL;

	/*
	 * _PPC indicates the maximum state currently supported by the platform
	 * (e.g. 0 = states 0..n; 1 = states 1..n; etc.
	 */
	status = FUNC2(pr->handle, "_PPC", NULL, &ppc);

	if (status != AE_NOT_FOUND)
		acpi_processor_ppc_status |= PPC_IN_USE;

	if (FUNC1(status) && status != AE_NOT_FOUND) {
		FUNC0((AE_INFO, status, "Evaluating _PPC"));
		return -ENODEV;
	}

	FUNC3("CPU %d: _PPC is %d - frequency %s limited\n", pr->id,
		       (int)ppc, ppc ? "" : "not");

	pr->performance_platform_limit = (int)ppc;

	return 0;
}