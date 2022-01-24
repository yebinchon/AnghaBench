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
 int FUNC0 (int) ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  TRACE_SMAPI ; 
 int g_usSmapiPort ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(void)
{
	int retval = -EIO;
	unsigned short usSmapiID = 0;
	unsigned long flags;

	FUNC1(TRACE_SMAPI, "smapi::smapi_init entry\n");

	FUNC4(&rtc_lock, flags);
	usSmapiID = FUNC0(0x7C);
	usSmapiID |= (FUNC0(0x7D) << 8);
	FUNC5(&rtc_lock, flags);
	FUNC2(TRACE_SMAPI, "smapi::smapi_init usSmapiID %x\n", usSmapiID);

	if (usSmapiID == 0x5349) {
		FUNC4(&rtc_lock, flags);
		g_usSmapiPort = FUNC0(0x7E);
		g_usSmapiPort |= (FUNC0(0x7F) << 8);
		FUNC5(&rtc_lock, flags);
		if (g_usSmapiPort == 0) {
			FUNC3("smapi::smapi_init, ERROR unable to read from SMAPI port\n");
		} else {
			FUNC2(TRACE_SMAPI,
				"smapi::smapi_init, exit TRUE g_usSmapiPort %x\n",
				g_usSmapiPort);
			retval = 0;
			//SmapiQuerySystemID();
		}
	} else {
		FUNC3("smapi::smapi_init, ERROR invalid usSmapiID\n");
		retval = -ENXIO;
	}

	return retval;
}