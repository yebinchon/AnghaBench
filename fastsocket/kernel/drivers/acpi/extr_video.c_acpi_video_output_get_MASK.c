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
struct output_device {int /*<<< orphan*/  dev; } ;
struct acpi_video_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_video_device*,unsigned long long*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct output_device *od)
{
	unsigned long long state;
	struct acpi_video_device *vd =
		(struct acpi_video_device *)FUNC1(&od->dev);
	FUNC0(vd, &state);
	return (int)state;
}