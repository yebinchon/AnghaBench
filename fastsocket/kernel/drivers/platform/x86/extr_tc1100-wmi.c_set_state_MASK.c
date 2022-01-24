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
typedef  int u8 ;
typedef  int u32 ;
struct acpi_buffer {int length; int* pointer; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GUID ; 
#define  TC1100_INSTANCE_JOGDIAL 129 
#define  TC1100_INSTANCE_WIRELESS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct acpi_buffer*) ; 

__attribute__((used)) static int FUNC2(u32 *in, u8 instance)
{
	u32 value;
	acpi_status status;
	struct acpi_buffer input;

	if (!in)
		return -EINVAL;

	if (instance > 2)
		return -ENODEV;

	switch (instance) {
	case TC1100_INSTANCE_WIRELESS:
		value = (*in) ? 1 : 2;
		break;
	case TC1100_INSTANCE_JOGDIAL:
		value = (*in) ? 0 : 1;
		break;
	default:
		return -ENODEV;
	}

	input.length = sizeof(u32);
	input.pointer = &value;

	status = FUNC1(GUID, instance, &input);
	if (FUNC0(status))
		return -ENODEV;

	return 0;
}