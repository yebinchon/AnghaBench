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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PROP_LEN ; 
 int /*<<< orphan*/  PLANETCORE_KEY_SERIAL_BAUD ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (void*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* prop_buf ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,int /*<<< orphan*/ *,int) ; 

void FUNC5(const char *table)
{
	void *chosen, *stdout;
	u64 baud;
	u32 baud32;
	int len;

	chosen = FUNC0("/chosen");
	if (!chosen)
		return;

	len = FUNC1(chosen, "linux,stdout-path", prop_buf, MAX_PROP_LEN);
	if (len <= 0)
		return;

	stdout = FUNC0(prop_buf);
	if (!stdout) {
		FUNC3("planetcore_set_serial_speed: "
		       "Bad /chosen/linux,stdout-path.\r\n");

		return;
	}

	if (!FUNC2(table, PLANETCORE_KEY_SERIAL_BAUD,
	                            &baud)) {
		FUNC3("planetcore_set_serial_speed: No SB tag.\r\n");
		return;
	}

	baud32 = baud;
	FUNC4(stdout, "current-speed", &baud32, 4);
}