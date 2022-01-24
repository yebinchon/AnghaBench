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
 int ENOMEM ; 
 int /*<<< orphan*/ * claw_dbf_setup ; 
 int /*<<< orphan*/ * claw_dbf_trace ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  debug_hex_ascii_view ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(void)
{
	claw_dbf_setup = FUNC1("claw_setup", 2, 1, 8);
	claw_dbf_trace = FUNC1("claw_trace", 2, 2, 8);
	if (claw_dbf_setup == NULL || claw_dbf_trace == NULL) {
		FUNC0();
		return -ENOMEM;
	}
	FUNC2(claw_dbf_setup, &debug_hex_ascii_view);
	FUNC3(claw_dbf_setup, 2);
	FUNC2(claw_dbf_trace, &debug_hex_ascii_view);
	FUNC3(claw_dbf_trace, 2);
	return 0;
}