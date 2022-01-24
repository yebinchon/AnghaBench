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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  isolated_cpus_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(acpi_handle handle)
{
	int num_cpus = 0;
	int ret;
	uint32_t idle_cpus;

	FUNC4(&isolated_cpus_lock);
	if (FUNC3(handle, &num_cpus)) {
		FUNC5(&isolated_cpus_lock);
		return;
	}
	ret = FUNC0(num_cpus);
	idle_cpus = FUNC1();
	if (!ret)
		FUNC2(handle, 0, idle_cpus);
	else
		FUNC2(handle, 1, 0);
	FUNC5(&isolated_cpus_lock);
}