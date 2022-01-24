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
 int /*<<< orphan*/  BONITO_BOOT_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void FUNC2 () ; 

__attribute__((used)) static void FUNC3(char *command)
{
	/* do preparation for reboot */
	FUNC1();

	/* reboot via jumping to boot base address */
	((void (*)(void))FUNC0(BONITO_BOOT_BASE, 4)) ();
}