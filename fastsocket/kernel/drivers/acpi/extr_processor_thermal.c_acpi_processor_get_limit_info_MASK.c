#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int limit; scalar_t__ throttling; } ;
struct acpi_processor {TYPE_1__ flags; } ;

/* Variables and functions */
 int EINVAL ; 

int FUNC0(struct acpi_processor *pr)
{

	if (!pr)
		return -EINVAL;

	if (pr->flags.throttling)
		pr->flags.limit = 1;

	return 0;
}