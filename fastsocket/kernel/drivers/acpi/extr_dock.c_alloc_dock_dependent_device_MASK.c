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
struct dock_dependent_device {int /*<<< orphan*/  hotplug_list; int /*<<< orphan*/  list; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dock_dependent_device* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dock_dependent_device *
FUNC2(acpi_handle handle)
{
	struct dock_dependent_device *dd;

	dd = FUNC1(sizeof(*dd), GFP_KERNEL);
	if (dd) {
		dd->handle = handle;
		FUNC0(&dd->list);
		FUNC0(&dd->hotplug_list);
	}
	return dd;
}