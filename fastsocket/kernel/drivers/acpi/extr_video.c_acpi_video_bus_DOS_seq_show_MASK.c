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
struct acpi_video_bus {int /*<<< orphan*/  dos_setting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct seq_file *seq, void *offset)
{
	struct acpi_video_bus *video = seq->private;


	FUNC0(seq, "DOS setting: <%d>\n", video->dos_setting);

	return 0;
}