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

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
#define  TPACPI_FAN_RD_ACPI_GFAN 129 
#define  TPACPI_FAN_RD_TPEC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int fan_status_access_mode ; 
 int /*<<< orphan*/  fan_status_offset ; 
 int /*<<< orphan*/  gfan_handle ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(u8 *status)
{
	u8 s;

	/* TODO:
	 * Add TPACPI_FAN_RD_ACPI_FANS ? */

	switch (fan_status_access_mode) {
	case TPACPI_FAN_RD_ACPI_GFAN:
		/* 570, 600e/x, 770e, 770x */

		if (FUNC4(!FUNC1(gfan_handle, &s, NULL, "d")))
			return -EIO;

		if (FUNC3(status))
			*status = s & 0x07;

		break;

	case TPACPI_FAN_RD_TPEC:
		/* all except 570, 600e/x, 770e, 770x */
		if (FUNC4(!FUNC0(fan_status_offset, &s)))
			return -EIO;

		if (FUNC3(status)) {
			*status = s;
			FUNC2(status);
		}

		break;

	default:
		return -ENXIO;
	}

	return 0;
}