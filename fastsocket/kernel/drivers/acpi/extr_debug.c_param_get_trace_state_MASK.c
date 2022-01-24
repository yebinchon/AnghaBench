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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int acpi_gbl_trace_flags ; 
 int /*<<< orphan*/  acpi_gbl_trace_method_name ; 
 int FUNC0 (char*,char*) ; 

__attribute__((used)) static int FUNC1(char *buffer, struct kernel_param *kp)
{
	if (!acpi_gbl_trace_method_name)
		return FUNC0(buffer, "disable");
	else {
		if (acpi_gbl_trace_flags & 1)
			return FUNC0(buffer, "1");
		else
			return FUNC0(buffer, "enable");
	}
	return 0;
}