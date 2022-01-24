#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct acpi_buffer {int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {scalar_t__ present; } ;
struct TYPE_6__ {TYPE_1__ status; } ;
struct TYPE_5__ {int /*<<< orphan*/  cm_supported; int /*<<< orphan*/  handle; int /*<<< orphan*/  init_flag; TYPE_3__* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* ehotk ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct acpi_buffer*) ; 

__attribute__((used)) static int FUNC7(void)
{
	struct acpi_buffer buffer = { &ACPI_ALLOCATE_BUFFER, NULL };
	int result;

	result = FUNC0(ehotk->device);
	if (result)
		return result;
	if (ehotk->device->status.present) {
		if (FUNC6(ehotk->handle, "INIT", ehotk->init_flag,
				    &buffer)) {
			FUNC2("Hotkey initialization failed\n");
			return -ENODEV;
		} else {
			FUNC4("Hotkey init flags 0x%x\n", ehotk->init_flag);
		}
		/* get control methods supported */
		if (FUNC5(ehotk->handle, "CMSG"
				   , &ehotk->cm_supported)) {
			FUNC2("Get control methods supported failed\n");
			return -ENODEV;
		} else {
			FUNC1();
			FUNC3("Get control methods supported: 0x%x\n",
				ehotk->cm_supported);
		}
	} else {
		FUNC2("Hotkey device not present, aborting\n");
		return -EINVAL;
	}
	return 0;
}