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
struct seq_file {struct acpi_device* private; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *offset)
{
	struct acpi_device *device = seq->private;
	acpi_status status;
	unsigned long long state;

	status = FUNC1(device->handle, "_LID", NULL, &state);
	FUNC2(seq, "state:      %s\n",
		   FUNC0(status) ? "unsupported" :
			(state ? "open" : "closed"));
	return 0;
}