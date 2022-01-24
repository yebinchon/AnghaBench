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
struct seq_file {struct acpi_video_device* private; } ;
struct acpi_video_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct acpi_video_device*,unsigned long long*) ; 
 int FUNC2 (struct acpi_video_device*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *offset)
{
	int status;
	struct acpi_video_device *dev = seq->private;
	unsigned long long state;


	if (!dev)
		goto end;

	status = FUNC1(dev, &state);
	FUNC3(seq, "state:     ");
	if (FUNC0(status))
		FUNC3(seq, "0x%02llx\n", state);
	else
		FUNC3(seq, "<not supported>\n");

	status = FUNC2(dev, &state);
	FUNC3(seq, "query:     ");
	if (FUNC0(status))
		FUNC3(seq, "0x%02llx\n", state);
	else
		FUNC3(seq, "<not supported>\n");

      end:
	return 0;
}