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
 int /*<<< orphan*/  VMWDT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmwdt_is_open ; 
 int /*<<< orphan*/  wdt_cancel ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret = FUNC1(wdt_cancel, 0, "", 0);
	FUNC0(ret != 0);
	FUNC2(VMWDT_RUNNING, &vmwdt_is_open);
	return ret;
}