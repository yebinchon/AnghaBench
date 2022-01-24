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
 int /*<<< orphan*/  CORGI_GPIO_LED_GREEN ; 
 int /*<<< orphan*/  FUNC0 (char,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(char mode, const char *cmd)
{
	if (!FUNC2())
		/* Green LED on tells the bootloader to reboot */
		FUNC1(CORGI_GPIO_LED_GREEN, 1);

	FUNC0('h', cmd);
}