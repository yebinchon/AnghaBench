#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int model; } ;

/* Variables and functions */
 int /*<<< orphan*/  SONYPI_ACPI_ACTIVE ; 
#define  SONYPI_DEVICE_MODEL_TYPE1 130 
#define  SONYPI_DEVICE_MODEL_TYPE2 129 
#define  SONYPI_DEVICE_MODEL_TYPE3 128 
 scalar_t__ camera ; 
 scalar_t__ fnkeyinit ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ sonypi_device ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(void)
{
	FUNC1(0x81, 0);	/* make sure we don't get any more events */
	if (camera)
		FUNC2();

	/* disable ACPI mode */
	if (!SONYPI_ACPI_ACTIVE && fnkeyinit)
		FUNC0(0xf1, 0xb2);

	switch (sonypi_device.model) {
	case SONYPI_DEVICE_MODEL_TYPE1:
		FUNC3();
		break;
	case SONYPI_DEVICE_MODEL_TYPE2:
		FUNC4();
		break;
	case SONYPI_DEVICE_MODEL_TYPE3:
		FUNC5();
		break;
	}

	return 0;
}