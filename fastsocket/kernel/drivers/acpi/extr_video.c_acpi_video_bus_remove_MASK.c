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
struct acpi_video_bus {struct acpi_video_bus* attached_array; int /*<<< orphan*/  input; int /*<<< orphan*/  pm_nb; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct acpi_video_bus* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_video_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_video_bus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_video_bus*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *device, int type)
{
	struct acpi_video_bus *video = NULL;


	if (!device || !FUNC0(device))
		return -EINVAL;

	video = FUNC0(device);

	FUNC6(&video->pm_nb);

	FUNC3(video);
	FUNC1(video);
	FUNC2(device);

	FUNC4(video->input);
	FUNC5(video->attached_array);
	FUNC5(video);

	return 0;
}