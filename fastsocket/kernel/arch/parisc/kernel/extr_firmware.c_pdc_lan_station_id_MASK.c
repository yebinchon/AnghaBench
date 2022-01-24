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

/* Variables and functions */
 int /*<<< orphan*/  PDC_LAN_STATION_ID ; 
 int /*<<< orphan*/  PDC_LAN_STATION_ID_READ ; 
 int /*<<< orphan*/  PDC_LAN_STATION_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdc_lock ; 
 int /*<<< orphan*/  pdc_result ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(char *lan_addr, unsigned long hpa)
{
	int retval;
	unsigned long flags;

	FUNC4(&pdc_lock, flags);
	retval = FUNC1(PDC_LAN_STATION_ID, PDC_LAN_STATION_ID_READ,
			FUNC0(pdc_result), hpa);
	if (retval < 0) {
		/* FIXME: else read MAC from NVRAM */
		FUNC3(lan_addr, 0, PDC_LAN_STATION_ID_SIZE);
	} else {
		FUNC2(lan_addr, pdc_result, PDC_LAN_STATION_ID_SIZE);
	}
	FUNC5(&pdc_lock, flags);

	return retval;
}