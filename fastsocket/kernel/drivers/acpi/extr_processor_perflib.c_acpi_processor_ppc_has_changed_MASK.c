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
struct acpi_processor {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (struct acpi_processor*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ignore_ppc ; 

int FUNC2(struct acpi_processor *pr)
{
	int ret;

	if (ignore_ppc)
		return 0;

	ret = FUNC0(pr);

	if (ret < 0)
		return (ret);
	else
		return FUNC1(pr->id);
}