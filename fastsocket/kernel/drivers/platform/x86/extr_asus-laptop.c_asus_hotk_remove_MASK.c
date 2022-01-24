#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct acpi_device {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 TYPE_1__* hotk ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct acpi_device *device, int type)
{
	if (!device || !FUNC0(device))
		return -EINVAL;

	FUNC1(hotk->name);
	FUNC1(hotk);

	return 0;
}