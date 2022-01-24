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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(const char *boot_command)
{
	/* Don't bother with any of this if the boot_command
	 * is empty.
	 */
	if (boot_command && FUNC2(boot_command)) {
		char full_boot_str[256];

		FUNC1(full_boot_str, "boot ");
		FUNC1(full_boot_str + FUNC2("boot "), boot_command);

		FUNC0("reboot-command", full_boot_str);
	}
	FUNC3();
}