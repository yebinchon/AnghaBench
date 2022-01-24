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
 int /*<<< orphan*/  BIOS_CALL_CONSOLE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(const char *buf, unsigned int len)
{
	FUNC0(BIOS_CALL_CONSOLE_WRITE, (long)buf, (long)len, 0, 0);
}