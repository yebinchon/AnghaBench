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
struct seq_file {struct acpi_video_bus* private; } ;
struct acpi_video_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct acpi_video_bus*,unsigned long long*) ; 
 int /*<<< orphan*/ * device_decode ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *offset)
{
	struct acpi_video_bus *video = seq->private;
	int status;
	unsigned long long id;


	if (!video)
		goto end;

	status = FUNC1(video, &id);
	if (!FUNC0(status)) {
		FUNC2(seq, "<not supported>\n");
		goto end;
	}
	FUNC2(seq, "device POSTed is <%s>\n", device_decode[id & 3]);

      end:
	return 0;
}