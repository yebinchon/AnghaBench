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
struct acpi_thermal {TYPE_1__* thermal_zone; } ;
struct TYPE_2__ {int polling_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, void *offset)
{
	struct acpi_thermal *tz = seq->private;


	if (!tz)
		goto end;

	if (!tz->thermal_zone->polling_delay) {
		FUNC1(seq, "<polling disabled>\n");
		goto end;
	}

	FUNC0(seq, "polling frequency:       %d seconds\n",
		   (tz->thermal_zone->polling_delay / 1000));

      end:
	return 0;
}