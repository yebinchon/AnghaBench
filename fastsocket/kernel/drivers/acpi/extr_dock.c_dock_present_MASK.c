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
struct dock_station {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 

__attribute__((used)) static int FUNC2(struct dock_station *ds)
{
	unsigned long long sta;
	acpi_status status;

	if (ds) {
		status = FUNC1(ds->handle, "_STA", NULL, &sta);
		if (FUNC0(status) && sta)
			return 1;
	}
	return 0;
}