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
struct acpi_sbs {int /*<<< orphan*/  lock; int /*<<< orphan*/  hc; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_SBS_BAT ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_sbs*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_sbs*) ; 
 struct acpi_sbs* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_sbs*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct acpi_device *device, int type)
{
	struct acpi_sbs *sbs;
	int id;

	if (!device)
		return -EINVAL;
	sbs = FUNC2(device);
	if (!sbs)
		return -EINVAL;
	FUNC6(&sbs->lock);
	FUNC3(sbs->hc);
	for (id = 0; id < MAX_SBS_BAT; ++id)
		FUNC0(sbs, id);
	FUNC1(sbs);
	FUNC7(&sbs->lock);
	FUNC5(&sbs->lock);
	FUNC4(sbs);
	return 0;
}