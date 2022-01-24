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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_CMDLEN ; 
 int /*<<< orphan*/  VMWDT_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmwdt_cmd ; 
 scalar_t__ vmwdt_conceal ; 
 int /*<<< orphan*/  vmwdt_interval ; 
 int /*<<< orphan*/  vmwdt_is_open ; 
 unsigned int wdt_conceal ; 
 unsigned int wdt_init ; 

__attribute__((used)) static int FUNC8(void)
{
	/* we allocate new memory every time to avoid having
	 * to track the state. static allocation is not an
	 * option since that might not be contiguous in real
	 * storage in case of a modular build */
	static char *ebc_cmd;
	size_t len;
	int ret;
	unsigned int func;

	ebc_cmd = FUNC5(MAX_CMDLEN, GFP_KERNEL);
	if (!ebc_cmd)
		return -ENOMEM;

	len = FUNC7(ebc_cmd, vmwdt_cmd, MAX_CMDLEN);
	FUNC0(ebc_cmd, MAX_CMDLEN);
	FUNC1(ebc_cmd, MAX_CMDLEN);

	func = vmwdt_conceal ? (wdt_init | wdt_conceal) : wdt_init;
	FUNC6(VMWDT_RUNNING, &vmwdt_is_open);
	ret = FUNC3(func, vmwdt_interval, ebc_cmd, len);
	FUNC2(ret != 0);
	FUNC4(ebc_cmd);
	return ret;
}