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
struct TYPE_2__ {int /*<<< orphan*/  cooling_mode; } ;
struct acpi_thermal {TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC1(struct seq_file *seq, void *offset)
{
	struct acpi_thermal *tz = seq->private;


	if (!tz)
		goto end;

	if (!tz->flags.cooling_mode)
		FUNC0(seq, "<setting not supported>\n");
	else
		FUNC0(seq, "0 - Active; 1 - Passive\n");

      end:
	return 0;
}