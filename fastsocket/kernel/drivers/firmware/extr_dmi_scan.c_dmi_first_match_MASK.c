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
struct dmi_system_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmi_system_id const*) ; 
 scalar_t__ FUNC1 (struct dmi_system_id const*) ; 

const struct dmi_system_id *FUNC2(const struct dmi_system_id *list)
{
	const struct dmi_system_id *d;

	for (d = list; !FUNC0(d); d++)
		if (FUNC1(d))
			return d;

	return NULL;
}