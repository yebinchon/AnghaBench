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

/* Variables and functions */
 scalar_t__ NMI_IO_APIC ; 
 int /*<<< orphan*/  __acpi_nmi_disable ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nmi_active ; 
 scalar_t__ nmi_watchdog ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC2(void)
{
	if (FUNC0(&nmi_active) && nmi_watchdog == NMI_IO_APIC)
		FUNC1(__acpi_nmi_disable, NULL, 1);
}