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
typedef  enum sony_nc_rfkill { ____Placeholder_sony_nc_rfkill } sony_nc_rfkill ;

/* Variables and functions */
 int N_SONY_RFKILL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int*) ; 
 int* sony_rfkill_address ; 
 int /*<<< orphan*/ * sony_rfkill_devices ; 

__attribute__((used)) static void FUNC3()
{
	enum sony_nc_rfkill i;
	int result;
	bool hwblock;

	FUNC2(0x124, 0x200, &result);
	hwblock = !(result & 0x1);

	for (i = 0; i < N_SONY_RFKILL; i++) {
		int argument = sony_rfkill_address[i];

		if (!sony_rfkill_devices[i])
			continue;

		if (hwblock) {
			if (FUNC0(sony_rfkill_devices[i], true)) {
				/* we already know we're blocked */
			}
			continue;
		}

		FUNC2(0x124, argument, &result);
		FUNC1(sony_rfkill_devices[i],
				  !(result & 0xf), false);
	}
}