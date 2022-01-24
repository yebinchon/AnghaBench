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
struct seq_file {struct acpi_thermal* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  active_index; scalar_t__ active; scalar_t__ passive; scalar_t__ hot; scalar_t__ critical; } ;
struct acpi_thermal {TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, void *offset)
{
	struct acpi_thermal *tz = seq->private;


	if (!tz)
		goto end;

	FUNC1(seq, "state:                   ");

	if (!tz->state.critical && !tz->state.hot && !tz->state.passive
	    && !tz->state.active)
		FUNC1(seq, "ok\n");
	else {
		if (tz->state.critical)
			FUNC1(seq, "critical ");
		if (tz->state.hot)
			FUNC1(seq, "hot ");
		if (tz->state.passive)
			FUNC1(seq, "passive ");
		if (tz->state.active)
			FUNC0(seq, "active[%d]", tz->state.active_index);
		FUNC1(seq, "\n");
	}

      end:
	return 0;
}